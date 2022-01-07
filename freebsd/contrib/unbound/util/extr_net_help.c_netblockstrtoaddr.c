
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
typedef int socklen_t ;
typedef int buf ;


 int addr_mask (struct sockaddr_storage*,int ,int) ;
 int atoi (char*) ;
 int ipstrtoaddr (char*,int,struct sockaddr_storage*,int *) ;
 int log_err (char*,char const*) ;
 scalar_t__ str_is_ip6 (char const*) ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,char const*,int) ;

int netblockstrtoaddr(const char* str, int port, struct sockaddr_storage* addr,
        socklen_t* addrlen, int* net)
{
 char buf[64];
 char* s;
 *net = (str_is_ip6(str)?128:32);
 if((s=strchr(str, '/'))) {
  if(atoi(s+1) > *net) {
   log_err("netblock too large: %s", str);
   return 0;
  }
  *net = atoi(s+1);
  if(*net == 0 && strcmp(s+1, "0") != 0) {
   log_err("cannot parse netblock: '%s'", str);
   return 0;
  }
  strlcpy(buf, str, sizeof(buf));
  s = strchr(buf, '/');
  if(s) *s = 0;
  s = buf;
 }
 if(!ipstrtoaddr(s?s:str, port, addr, addrlen)) {
  log_err("cannot parse ip address: '%s'", str);
  return 0;
 }
 if(s) {
  addr_mask(addr, *addrlen, *net);
 }
 return 1;
}
