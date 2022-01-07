
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {int dummy; } ;


 int IEEE80211_IOC_POWERSAVE ;
 int IEEE80211_POWERSAVE_OFF ;
 int IEEE80211_POWERSAVE_ON ;
 int set80211 (int,int ,int ,int ,int *) ;

__attribute__((used)) static void
set80211powersave(const char *val, int d, int s, const struct afswtch *rafp)
{
 if (d == 0)
  set80211(s, IEEE80211_IOC_POWERSAVE, IEEE80211_POWERSAVE_OFF,
      0, ((void*)0));
 else
  set80211(s, IEEE80211_IOC_POWERSAVE, IEEE80211_POWERSAVE_ON,
      0, ((void*)0));
}
