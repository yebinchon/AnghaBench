
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ifm_current; } ;


 int IEEE80211_CHAN_A ;
 int IEEE80211_CHAN_B ;
 int IEEE80211_CHAN_G ;
 int IEEE80211_CHAN_HT20 ;
 int IEEE80211_CHAN_HT40D ;
 int IEEE80211_CHAN_HT40U ;
 int IFM_AUTO ;
 int IFM_IEEE80211_11A ;
 int IFM_IEEE80211_11B ;
 int IFM_IEEE80211_11G ;
 int IFM_MODE (int ) ;
 int canpromote (int,int,int) ;
 int htconf ;
 TYPE_1__* ifmr ;

__attribute__((used)) static int
promote(int i)
{
 int chanmode = ifmr != ((void*)0) ? IFM_MODE(ifmr->ifm_current) : IFM_AUTO;



 if (chanmode != IFM_IEEE80211_11B)
  i = canpromote(i, IEEE80211_CHAN_B, IEEE80211_CHAN_G);
 if (chanmode != IFM_IEEE80211_11G && (htconf & 1)) {
  i = canpromote(i, IEEE80211_CHAN_G,
   IEEE80211_CHAN_G | IEEE80211_CHAN_HT20);
  if (htconf & 2) {
   i = canpromote(i, IEEE80211_CHAN_G,
    IEEE80211_CHAN_G | IEEE80211_CHAN_HT40D);
   i = canpromote(i, IEEE80211_CHAN_G,
    IEEE80211_CHAN_G | IEEE80211_CHAN_HT40U);
  }
 }
 if (chanmode != IFM_IEEE80211_11A && (htconf & 1)) {
  i = canpromote(i, IEEE80211_CHAN_A,
   IEEE80211_CHAN_A | IEEE80211_CHAN_HT20);
  if (htconf & 2) {
   i = canpromote(i, IEEE80211_CHAN_A,
    IEEE80211_CHAN_A | IEEE80211_CHAN_HT40D);
   i = canpromote(i, IEEE80211_CHAN_A,
    IEEE80211_CHAN_A | IEEE80211_CHAN_HT40U);
  }
 }
 return i;
}
