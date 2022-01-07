
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afswtch {int dummy; } ;
struct TYPE_2__ {int icp_flags; } ;


 int IEEE80211_CLONE_NOBEACONS ;
 TYPE_1__ params ;

__attribute__((used)) static void
set80211clone_beacons(const char *val, int d, int s, const struct afswtch *rafp)
{

 if (d)
  params.icp_flags &= ~IEEE80211_CLONE_NOBEACONS;
 else
  params.icp_flags |= IEEE80211_CLONE_NOBEACONS;
}
