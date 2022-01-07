
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
typedef int socklen_t ;
typedef int buf ;


 int MAX_ADDR_STRLEN ;
 int UNBOUND_DNS_PORT ;
 int atoi (char*) ;
 int ipstrtoaddr (char const*,int,struct sockaddr_storage*,int *) ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,char const*,int) ;

int
extstrtoaddr(const char* str, struct sockaddr_storage* addr,
 socklen_t* addrlen)
{
 char* s;
 int port = UNBOUND_DNS_PORT;
 if((s=strchr(str, '@'))) {
  char buf[MAX_ADDR_STRLEN];
  if(s-str >= MAX_ADDR_STRLEN) {
   return 0;
  }
  (void)strlcpy(buf, str, sizeof(buf));
  buf[s-str] = 0;
  port = atoi(s+1);
  if(port == 0 && strcmp(s+1,"0")!=0) {
   return 0;
  }
  return ipstrtoaddr(buf, port, addr, addrlen);
 }
 return ipstrtoaddr(str, port, addr, addrlen);
}
