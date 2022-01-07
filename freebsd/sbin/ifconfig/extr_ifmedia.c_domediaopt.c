
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifmediareq {int ifm_current; int * ifm_ulist; } ;
struct TYPE_2__ {int ifr_media; int ifr_name; } ;


 int IFM_FDX ;
 int IFM_HDX ;
 int IFM_TYPE (int ) ;
 int callback_register (int ,void*) ;
 int get_media_options (int ,char const*) ;
 struct ifmediareq* ifmedia_getstate (int) ;
 TYPE_1__ ifr ;
 int name ;
 int setifmediacallback ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
domediaopt(const char *val, int clear, int s)
{
 struct ifmediareq *ifmr;
 int options;

 ifmr = ifmedia_getstate(s);

 options = get_media_options(IFM_TYPE(ifmr->ifm_ulist[0]), val);

 strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));
 ifr.ifr_media = ifmr->ifm_current;
 if (clear)
  ifr.ifr_media &= ~options;
 else {
  if (options & IFM_HDX) {
   ifr.ifr_media &= ~IFM_FDX;
   options &= ~IFM_HDX;
  }
  ifr.ifr_media |= options;
 }
 ifmr->ifm_current = ifr.ifr_media;
 callback_register(setifmediacallback, (void *)ifmr);
}
