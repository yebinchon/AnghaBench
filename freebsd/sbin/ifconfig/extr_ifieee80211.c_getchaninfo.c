
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IEEE80211_CHANINFO_SIZE (int ) ;
 int IEEE80211_IOC_CHANINFO ;
 int MAXCHAN ;
 int * chaninfo ;
 int err (int,char*) ;
 int errx (int,char*) ;
 scalar_t__ get80211 (int,int ,int *,int ) ;
 int gethtconf (int) ;
 int getvhtconf (int) ;
 int ifmedia_getstate (int) ;
 int ifmr ;
 int * malloc (int ) ;

__attribute__((used)) static void
getchaninfo(int s)
{
 if (chaninfo != ((void*)0))
  return;
 chaninfo = malloc(IEEE80211_CHANINFO_SIZE(MAXCHAN));
 if (chaninfo == ((void*)0))
  errx(1, "no space for channel list");
 if (get80211(s, IEEE80211_IOC_CHANINFO, chaninfo,
     IEEE80211_CHANINFO_SIZE(MAXCHAN)) < 0)
  err(1, "unable to get channel information");
 ifmr = ifmedia_getstate(s);
 gethtconf(s);
 getvhtconf(s);
}
