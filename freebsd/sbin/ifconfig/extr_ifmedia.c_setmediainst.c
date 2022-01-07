
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifmediareq {int ifm_current; } ;
struct afswtch {int dummy; } ;
struct TYPE_2__ {int ifr_media; int ifr_name; } ;


 int IFM_IMASK ;
 scalar_t__ IFM_INST_MAX ;
 int IFM_ISHIFT ;
 int atoi (char const*) ;
 int callback_register (int ,void*) ;
 int errx (int,char*,char const*) ;
 struct ifmediareq* ifmedia_getstate (int) ;
 TYPE_1__ ifr ;
 int name ;
 int setifmediacallback ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
setmediainst(const char *val, int d, int s, const struct afswtch *afp)
{
 struct ifmediareq *ifmr;
 int inst;

 ifmr = ifmedia_getstate(s);

 inst = atoi(val);
 if (inst < 0 || inst > (int)IFM_INST_MAX)
  errx(1, "invalid media instance: %s", val);

 strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));
 ifr.ifr_media = (ifmr->ifm_current & ~IFM_IMASK) | inst << IFM_ISHIFT;

 ifmr->ifm_current = ifr.ifr_media;
 callback_register(setifmediacallback, (void *)ifmr);
}
