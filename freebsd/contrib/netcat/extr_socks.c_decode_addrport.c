
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct addrinfo {scalar_t__ ai_addrlen; int ai_addr; int ai_socktype; int ai_flags; int ai_family; } ;
typedef scalar_t__ socklen_t ;
typedef int hints ;


 int AI_NUMERICHOST ;
 int PF_INET ;
 int PF_UNSPEC ;
 int SOCK_STREAM ;
 int bzero (struct addrinfo*,int) ;
 int errx (int,char*,...) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int memcpy (struct sockaddr*,int ,scalar_t__) ;

__attribute__((used)) static int
decode_addrport(const char *h, const char *p, struct sockaddr *addr,
    socklen_t addrlen, int v4only, int numeric)
{
 int r;
 struct addrinfo hints, *res;

 bzero(&hints, sizeof(hints));
 hints.ai_family = v4only ? PF_INET : PF_UNSPEC;
 hints.ai_flags = numeric ? AI_NUMERICHOST : 0;
 hints.ai_socktype = SOCK_STREAM;
 r = getaddrinfo(h, p, &hints, &res);

 if (r != 0) {
  if (!numeric) {
   errx(1, "getaddrinfo(\"%.64s\", \"%.64s\"): %s", h, p,
       gai_strerror(r));
  }
  return (-1);
 }
 if (addrlen < res->ai_addrlen) {
  freeaddrinfo(res);
  errx(1, "internal error: addrlen < res->ai_addrlen");
 }
 memcpy(addr, res->ai_addr, res->ai_addrlen);
 freeaddrinfo(res);
 return (0);
}
