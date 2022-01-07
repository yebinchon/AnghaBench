
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_chanswitch_req {int csa_mode; int csa_count; int csa_chan; } ;
struct afswtch {int dummy; } ;
typedef int csr ;


 int IEEE80211_IOC_CHANSWITCH ;
 int getchannel (int,int *,char const*) ;
 int set80211 (int,int ,int ,int,struct ieee80211_chanswitch_req*) ;

__attribute__((used)) static void
set80211chanswitch(const char *val, int d, int s, const struct afswtch *rafp)
{
 struct ieee80211_chanswitch_req csr;

 getchannel(s, &csr.csa_chan, val);
 csr.csa_mode = 1;
 csr.csa_count = 5;
 set80211(s, IEEE80211_IOC_CHANSWITCH, 0, sizeof(csr), &csr);
}
