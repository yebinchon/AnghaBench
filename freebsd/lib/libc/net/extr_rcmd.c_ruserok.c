
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; struct addrinfo* ai_next; int ai_socktype; int ai_family; } ;
typedef int hints ;


 int PF_UNSPEC ;
 int SOCK_DGRAM ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ iruserok_sa (int ,int ,int,char const*,char const*) ;
 int memset (struct addrinfo*,int ,int) ;

int
ruserok(const char *rhost, int superuser, const char *ruser, const char *luser)
{
 struct addrinfo hints, *res, *r;
 int error;

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = PF_UNSPEC;
 hints.ai_socktype = SOCK_DGRAM;
 error = getaddrinfo(rhost, "0", &hints, &res);
 if (error)
  return (-1);

 for (r = res; r; r = r->ai_next) {
  if (iruserok_sa(r->ai_addr, r->ai_addrlen, superuser, ruser,
      luser) == 0) {
   freeaddrinfo(res);
   return (0);
  }
 }
 freeaddrinfo(res);
 return (-1);
}
