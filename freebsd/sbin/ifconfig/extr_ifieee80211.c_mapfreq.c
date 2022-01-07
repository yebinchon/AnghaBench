
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct ieee80211_channel {int ic_freq; int ic_flags; } ;
struct TYPE_2__ {size_t ic_nchans; struct ieee80211_channel* ic_chans; } ;


 TYPE_1__* chaninfo ;
 int errx (int,char*,int,int) ;
 size_t promote (size_t) ;

__attribute__((used)) static void
mapfreq(struct ieee80211_channel *chan, int freq, int flags)
{
 u_int i;

 for (i = 0; i < chaninfo->ic_nchans; i++) {
  const struct ieee80211_channel *c = &chaninfo->ic_chans[i];

  if (c->ic_freq == freq && (c->ic_flags & flags) == flags) {
   if (flags == 0) {

    c = &chaninfo->ic_chans[promote(i)];
   }
   *chan = *c;
   return;
  }
 }
 errx(1, "unknown/undefined frequency %u/0x%x", freq, flags);
}
