
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
typedef int socklen_t ;
typedef int buf ;


 int MAX_ADDR_STRLEN ;
 int UNBOUND_DNS_OVER_TLS_PORT ;
 int UNBOUND_DNS_PORT ;
 int atoi (char*) ;
 int ipstrtoaddr (char*,int,struct sockaddr_storage*,int *) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;

int authextstrtoaddr(char* str, struct sockaddr_storage* addr,
 socklen_t* addrlen, char** auth_name)
{
 char* s;
 int port = UNBOUND_DNS_PORT;
 if((s=strchr(str, '@'))) {
  char buf[MAX_ADDR_STRLEN];
  size_t len = (size_t)(s-str);
  char* hash = strchr(s+1, '#');
  if(hash) {
   *auth_name = hash+1;
  } else {
   *auth_name = ((void*)0);
  }
  if(len >= MAX_ADDR_STRLEN) {
   return 0;
  }
  (void)strlcpy(buf, str, sizeof(buf));
  buf[len] = 0;
  port = atoi(s+1);
  if(port == 0) {
   if(!hash && strcmp(s+1,"0")!=0)
    return 0;
   if(hash && strncmp(s+1,"0#",2)!=0)
    return 0;
  }
  return ipstrtoaddr(buf, port, addr, addrlen);
 }
 if((s=strchr(str, '#'))) {
  char buf[MAX_ADDR_STRLEN];
  size_t len = (size_t)(s-str);
  if(len >= MAX_ADDR_STRLEN) {
   return 0;
  }
  (void)strlcpy(buf, str, sizeof(buf));
  buf[len] = 0;
  port = UNBOUND_DNS_OVER_TLS_PORT;
  *auth_name = s+1;
  return ipstrtoaddr(buf, port, addr, addrlen);
 }
 *auth_name = ((void*)0);
 return ipstrtoaddr(str, port, addr, addrlen);
}
