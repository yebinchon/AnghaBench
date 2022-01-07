
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {int dummy; } ;


 int IEEE80211_IOC_WME ;
 int set80211 (int,int ,int,int ,int *) ;

__attribute__((used)) static void
set80211wme(const char *val, int d, int s, const struct afswtch *rafp)
{
 set80211(s, IEEE80211_IOC_WME, d, 0, ((void*)0));
}
