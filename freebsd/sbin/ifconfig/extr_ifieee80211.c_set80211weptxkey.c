
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {int dummy; } ;


 int IEEE80211_IOC_WEPTXKEY ;
 scalar_t__ IEEE80211_KEYIX_NONE ;
 scalar_t__ atoi (char const*) ;
 scalar_t__ isundefarg (char const*) ;
 int set80211 (int,int ,scalar_t__,int ,int *) ;

__attribute__((used)) static void
set80211weptxkey(const char *val, int d, int s, const struct afswtch *rafp)
{
 if (isundefarg(val))
  set80211(s, IEEE80211_IOC_WEPTXKEY, IEEE80211_KEYIX_NONE, 0, ((void*)0));
 else
  set80211(s, IEEE80211_IOC_WEPTXKEY, atoi(val)-1, 0, ((void*)0));
}
