
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afswtch {int (* af_settunnel ) (int,struct addrinfo*,struct addrinfo*) ;int af_name; } ;
struct addrinfo {TYPE_1__* ai_addr; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;


 int errx (int,char*,...) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,int *,int *,struct addrinfo**) ;
 int stub1 (int,struct addrinfo*,struct addrinfo*) ;
 int warn (char*,int ) ;

__attribute__((used)) static void
settunnel(const char *src, const char *dst, int s, const struct afswtch *afp)
{
 struct addrinfo *srcres, *dstres;
 int ecode;

 if (afp->af_settunnel == ((void*)0)) {
  warn("address family %s does not support tunnel setup",
   afp->af_name);
  return;
 }

 if ((ecode = getaddrinfo(src, ((void*)0), ((void*)0), &srcres)) != 0)
  errx(1, "error in parsing address string: %s",
      gai_strerror(ecode));

 if ((ecode = getaddrinfo(dst, ((void*)0), ((void*)0), &dstres)) != 0)
  errx(1, "error in parsing address string: %s",
      gai_strerror(ecode));

 if (srcres->ai_addr->sa_family != dstres->ai_addr->sa_family)
  errx(1,
      "source and destination address families do not match");

 afp->af_settunnel(s, srcres, dstres);

 freeaddrinfo(srcres);
 freeaddrinfo(dstres);
}
