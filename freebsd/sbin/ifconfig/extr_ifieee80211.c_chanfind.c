
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int ic_flags; } ;



__attribute__((used)) static int
chanfind(const struct ieee80211_channel chans[], int nchans, int flags)
{
 int i;

 for (i = 0; i < nchans; i++) {
  const struct ieee80211_channel *c = &chans[i];
  if ((c->ic_flags & flags) == flags)
   return 1;
 }
 return 0;
}
