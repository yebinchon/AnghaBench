
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211req_chaninfo {int ic_nchans; int ic_chans; } ;


 int IEEE80211_CHAN_2GHZ ;
 int IEEE80211_CHAN_5GHZ ;
 int IEEE80211_CHAN_GSM ;
 int IEEE80211_CHAN_HALF ;
 int IEEE80211_CHAN_QUARTER ;
 int REQ_FLAGS ;
 int chanfind (int ,int ,int) ;
 int * chanlookup (int ,int ,int,int) ;

__attribute__((used)) static int
checkchan(const struct ieee80211req_chaninfo *avail, int freq, int flags)
{
 flags &= ~REQ_FLAGS;





 if (chanlookup(avail->ic_chans, avail->ic_nchans, freq, flags) != ((void*)0))
  return 1;
 if (flags & IEEE80211_CHAN_GSM) {






  return 1;
 }
 if ((flags & (IEEE80211_CHAN_HALF | IEEE80211_CHAN_QUARTER)) == 0)
  return 0;
 if (chanlookup(avail->ic_chans, avail->ic_nchans, freq,
     flags &~ (IEEE80211_CHAN_HALF | IEEE80211_CHAN_QUARTER)) == ((void*)0))
  return 0;
 if (flags & IEEE80211_CHAN_HALF) {
  return chanfind(avail->ic_chans, avail->ic_nchans,
      IEEE80211_CHAN_HALF |
         (flags & (IEEE80211_CHAN_2GHZ | IEEE80211_CHAN_5GHZ)));
 } else {
  return chanfind(avail->ic_chans, avail->ic_nchans,
      IEEE80211_CHAN_QUARTER |
   (flags & (IEEE80211_CHAN_2GHZ | IEEE80211_CHAN_5GHZ)));
 }
}
