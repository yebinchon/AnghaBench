
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct addrinfo {int ai_addrlen; int * ai_canonname; int ai_addr; int ai_flags; } ;
struct TYPE_6__ {int sa; } ;
typedef TYPE_1__ sockaddr_u ;


 int AI_ADDRCONFIG ;
 int AI_CANONNAME ;
 int INSIST (int) ;
 int LENHOSTNAME ;
 int SOCKLEN (TYPE_1__*) ;
 int ZERO (struct addrinfo) ;
 scalar_t__ decodenetnum (char const*,TYPE_1__*) ;
 int fprintf (int ,char*,char const*) ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 int getnameinfo (int *,int ,char*,int ,int *,int ,int ) ;
 int memcpy (TYPE_1__*,int ,int) ;
 int stderr ;
 int strlcpy (char*,int *,int ) ;

int
getnetnum(
 const char *hname,
 sockaddr_u *num,
 char *fullhost,
 int af
 )
{
 struct addrinfo hints, *ai = ((void*)0);

 ZERO(hints);
 hints.ai_flags = AI_CANONNAME;
 if (decodenetnum(hname, num)) {
  if (fullhost != ((void*)0))
   getnameinfo(&num->sa, SOCKLEN(num), fullhost,
        LENHOSTNAME, ((void*)0), 0, 0);
  return 1;
 } else if (getaddrinfo(hname, "ntp", &hints, &ai) == 0) {
  INSIST(sizeof(*num) >= ai->ai_addrlen);
  memcpy(num, ai->ai_addr, ai->ai_addrlen);
  if (fullhost != ((void*)0)) {
   if (ai->ai_canonname != ((void*)0))
    strlcpy(fullhost, ai->ai_canonname,
     LENHOSTNAME);
   else
    getnameinfo(&num->sa, SOCKLEN(num),
         fullhost, LENHOSTNAME, ((void*)0),
         0, 0);
  }
  freeaddrinfo(ai);
  return 1;
 }
 fprintf(stderr, "***Can't find host %s\n", hname);

 return 0;
}
