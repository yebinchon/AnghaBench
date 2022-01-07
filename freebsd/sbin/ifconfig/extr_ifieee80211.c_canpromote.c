
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct ieee80211_channel {int ic_flags; scalar_t__ ic_freq; } ;
struct TYPE_2__ {int ic_nchans; struct ieee80211_channel* ic_chans; } ;


 TYPE_1__* chaninfo ;

__attribute__((used)) static int
canpromote(int i, int from, int to)
{
 const struct ieee80211_channel *fc = &chaninfo->ic_chans[i];
 u_int j;

 if ((fc->ic_flags & from) != from)
  return i;

 if (i+1 < chaninfo->ic_nchans &&
     chaninfo->ic_chans[i+1].ic_freq == fc->ic_freq &&
     (chaninfo->ic_chans[i+1].ic_flags & to) == to)
  return i+1;

 for (j = 0; j < chaninfo->ic_nchans; j++) {
  const struct ieee80211_channel *tc = &chaninfo->ic_chans[j];
  if (j != i &&
      tc->ic_freq == fc->ic_freq && (tc->ic_flags & to) == to)
  return j;
 }
 return i;
}
