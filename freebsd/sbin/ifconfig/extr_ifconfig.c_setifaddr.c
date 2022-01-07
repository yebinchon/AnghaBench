
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {scalar_t__ af_af; int (* af_getaddr ) (char const*,int ) ;} ;


 int ADDR ;
 scalar_t__ AF_LINK ;
 int RIDADDR ;
 int clearaddr ;
 scalar_t__ doalias ;
 int setaddr ;
 int stub1 (char const*,int ) ;

__attribute__((used)) static void
setifaddr(const char *addr, int param, int s, const struct afswtch *afp)
{
 if (afp->af_getaddr == ((void*)0))
  return;





 setaddr++;
 if (doalias == 0 && afp->af_af != AF_LINK)
  clearaddr = 1;
 afp->af_getaddr(addr, (doalias >= 0 ? ADDR : RIDADDR));
}
