
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int ic_ieee; } ;


 int mapfreq (struct ieee80211_channel*,int,int) ;

__attribute__((used)) static int
ieee80211_mhz2ieee(int freq, int flags)
{
 struct ieee80211_channel chan;
 mapfreq(&chan, freq, flags);
 return chan.ic_ieee;
}
