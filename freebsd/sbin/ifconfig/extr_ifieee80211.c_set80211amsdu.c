
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {int dummy; } ;


 int IEEE80211_IOC_AMSDU ;
 int err (int,char*) ;
 scalar_t__ get80211val (int,int ,int*) ;
 int set80211 (int,int ,int,int ,int *) ;

__attribute__((used)) static void
set80211amsdu(const char *val, int d, int s, const struct afswtch *rafp)
{
 int amsdu;

 if (get80211val(s, IEEE80211_IOC_AMSDU, &amsdu) < 0)
  err(-1, "cannot get AMSDU setting");
 if (d < 0) {
  d = -d;
  amsdu &= ~d;
 } else
  amsdu |= d;
 set80211(s, IEEE80211_IOC_AMSDU, amsdu, 0, ((void*)0));
}
