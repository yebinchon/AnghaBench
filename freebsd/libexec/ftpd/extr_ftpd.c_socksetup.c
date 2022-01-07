
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_family; int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; struct addrinfo* ai_next; int ai_flags; } ;
typedef int on ;
typedef int hints ;


 scalar_t__ AF_INET6 ;
 int AI_PASSIVE ;
 int EAI_SYSTEM ;
 int IPPROTO_IPV6 ;
 int IPV6_V6ONLY ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_WARNING ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ bind (int,int ,int ) ;
 int close (int) ;
 int errno ;
 int free (int*) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,char const*,struct addrinfo*,struct addrinfo**) ;
 int* malloc (int) ;
 int memset (struct addrinfo*,int ,int) ;
 scalar_t__ setsockopt (int,int ,int ,int const*,int) ;
 int socket (int,int ,int ) ;
 int strerror (int ) ;
 int syslog (int ,char*,...) ;

__attribute__((used)) static int *
socksetup(int af, char *bindname, const char *bindport)
{
 struct addrinfo hints, *res, *r;
 int error, maxs, *s, *socks;
 const int on = 1;

 memset(&hints, 0, sizeof(hints));
 hints.ai_flags = AI_PASSIVE;
 hints.ai_family = af;
 hints.ai_socktype = SOCK_STREAM;
 error = getaddrinfo(bindname, bindport, &hints, &res);
 if (error) {
  syslog(LOG_ERR, "%s", gai_strerror(error));
  if (error == EAI_SYSTEM)
   syslog(LOG_ERR, "%s", strerror(errno));
  return ((void*)0);
 }


 for (maxs = 0, r = res; r; r = r->ai_next, maxs++)
  ;
 socks = malloc((maxs + 1) * sizeof(int));
 if (!socks) {
  freeaddrinfo(res);
  syslog(LOG_ERR, "couldn't allocate memory for sockets");
  return ((void*)0);
 }

 *socks = 0;
 s = socks + 1;
 for (r = res; r; r = r->ai_next) {
  *s = socket(r->ai_family, r->ai_socktype, r->ai_protocol);
  if (*s < 0) {
   syslog(LOG_DEBUG, "control socket: %m");
   continue;
  }
  if (setsockopt(*s, SOL_SOCKET, SO_REUSEADDR,
      &on, sizeof(on)) < 0)
   syslog(LOG_WARNING,
       "control setsockopt (SO_REUSEADDR): %m");
  if (r->ai_family == AF_INET6) {
   if (setsockopt(*s, IPPROTO_IPV6, IPV6_V6ONLY,
       &on, sizeof(on)) < 0)
    syslog(LOG_WARNING,
        "control setsockopt (IPV6_V6ONLY): %m");
  }
  if (bind(*s, r->ai_addr, r->ai_addrlen) < 0) {
   syslog(LOG_DEBUG, "control bind: %m");
   close(*s);
   continue;
  }
  (*socks)++;
  s++;
 }

 if (res)
  freeaddrinfo(res);

 if (*socks == 0) {
  syslog(LOG_ERR, "control socket: Couldn't bind to any socket");
  free(socks);
  return ((void*)0);
 }
 return(socks);
}
