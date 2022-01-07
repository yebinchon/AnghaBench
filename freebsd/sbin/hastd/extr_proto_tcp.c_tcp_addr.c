
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct addrinfo {int ai_flags; int ai_addrlen; int ai_addr; int ai_family; int ai_protocol; int ai_socktype; } ;
typedef int portstr ;
typedef int iporhost ;
typedef int intmax_t ;
typedef int hints ;


 int AI_ADDRCONFIG ;
 int AI_NUMERICSERV ;
 int EINVAL ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int IPPROTO_TCP ;
 int MAXHOSTNAMELEN ;
 int PF_INET ;
 int PF_INET6 ;
 int PF_UNSPEC ;
 int SOCK_STREAM ;
 int bzero (struct addrinfo*,int) ;
 int errno ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 int memcpy (struct sockaddr_storage*,int ,int ) ;
 int numfromstr (char const*,int,int,int*) ;
 int pjdlog_debug (int,char*,char*,char*,int ) ;
 int snprintf (char*,int,char*,int) ;
 char* strchr (char const*,char) ;
 size_t strlcpy (char*,char const*,size_t) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int
tcp_addr(const char *addr, int defport, struct sockaddr_storage *sap)
{
 char iporhost[MAXHOSTNAMELEN], portstr[6];
 struct addrinfo hints;
 struct addrinfo *res;
 const char *pp;
 intmax_t port;
 size_t size;
 int error;

 if (addr == ((void*)0))
  return (-1);

 bzero(&hints, sizeof(hints));
 hints.ai_flags = AI_ADDRCONFIG | AI_NUMERICSERV;
 hints.ai_family = PF_UNSPEC;
 hints.ai_socktype = SOCK_STREAM;
 hints.ai_protocol = IPPROTO_TCP;

 if (strncasecmp(addr, "tcp4://", 7) == 0) {
  addr += 7;
  hints.ai_family = PF_INET;
 } else if (strncasecmp(addr, "tcp6://", 7) == 0) {
  addr += 7;
  hints.ai_family = PF_INET6;
 } else if (strncasecmp(addr, "tcp://", 6) == 0) {
  addr += 6;
 } else {




 }
 pp = ((void*)0);
 if (strchr(addr, ':') != strrchr(addr, ':')) {
  if (addr[0] == '[')
   pp = strrchr(addr, ':');
 } else {
  pp = strrchr(addr, ':');
 }
 if (pp == ((void*)0)) {

  port = defport;
 } else {
  if (numfromstr(pp + 1, 1, 65535, &port) == -1)
   return (errno);
 }
 (void)snprintf(portstr, sizeof(portstr), "%jd", (intmax_t)port);

 if (pp == ((void*)0)) {
  size = sizeof(iporhost);
  if (strlcpy(iporhost, addr, size) >= size)
   return (ENAMETOOLONG);
 } else if (addr[0] == '[' && pp[-1] == ']') {
  size = (size_t)(pp - addr - 2 + 1);
  if (size > sizeof(iporhost))
   return (ENAMETOOLONG);
  (void)strlcpy(iporhost, addr + 1, size);
 } else {
  size = (size_t)(pp - addr + 1);
  if (size > sizeof(iporhost))
   return (ENAMETOOLONG);
  (void)strlcpy(iporhost, addr, size);
 }

 error = getaddrinfo(iporhost, portstr, &hints, &res);
 if (error != 0) {
  pjdlog_debug(1, "getaddrinfo(%s, %s) failed: %s.", iporhost,
      portstr, gai_strerror(error));
  return (EINVAL);
 }
 if (res == ((void*)0))
  return (ENOENT);

 memcpy(sap, res->ai_addr, res->ai_addrlen);

 freeaddrinfo(res);

 return (0);
}
