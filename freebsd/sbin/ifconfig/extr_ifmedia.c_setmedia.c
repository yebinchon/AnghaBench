
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifmediareq {int ifm_current; int * ifm_ulist; } ;
struct afswtch {int dummy; } ;
struct TYPE_2__ {int ifr_media; int ifr_name; } ;


 int IFM_IMASK ;
 int IFM_TYPE (int ) ;
 int callback_register (int ,void*) ;
 int get_media_subtype (int,char const*) ;
 struct ifmediareq* ifmedia_getstate (int) ;
 TYPE_1__ ifr ;
 int name ;
 int setifmediacallback ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
setmedia(const char *val, int d, int s, const struct afswtch *afp)
{
 struct ifmediareq *ifmr;
 int subtype;

 ifmr = ifmedia_getstate(s);
 subtype = get_media_subtype(IFM_TYPE(ifmr->ifm_ulist[0]), val);

 strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));
 ifr.ifr_media = (ifmr->ifm_current & IFM_IMASK) |
     IFM_TYPE(ifmr->ifm_ulist[0]) | subtype;

 ifmr->ifm_current = ifr.ifr_media;
 callback_register(setifmediacallback, (void *)ifmr);
}
