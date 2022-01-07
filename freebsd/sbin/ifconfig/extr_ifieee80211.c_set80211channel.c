
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;
struct afswtch {int dummy; } ;
typedef int chan ;


 int IEEE80211_IOC_CURCHAN ;
 int getchannel (int,struct ieee80211_channel*,char const*) ;
 int set80211 (int,int ,int ,int,struct ieee80211_channel*) ;

__attribute__((used)) static void
set80211channel(const char *val, int d, int s, const struct afswtch *rafp)
{
 struct ieee80211_channel chan;

 getchannel(s, &chan, val);
 set80211(s, IEEE80211_IOC_CURCHAN, 0, sizeof(chan), &chan);
}
