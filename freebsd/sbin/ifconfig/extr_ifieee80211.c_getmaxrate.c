
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int const IEEE80211_RATE_VAL ;

__attribute__((used)) static int
getmaxrate(const uint8_t rates[15], uint8_t nrates)
{
 int i, maxrate = -1;

 for (i = 0; i < nrates; i++) {
  int rate = rates[i] & IEEE80211_RATE_VAL;
  if (rate > maxrate)
   maxrate = rate;
 }
 return maxrate / 2;
}
