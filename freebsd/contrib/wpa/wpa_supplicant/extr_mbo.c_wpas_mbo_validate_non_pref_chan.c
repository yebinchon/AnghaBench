
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ MBO_NON_PREF_CHAN_REASON_INT_INTERFERENCE ;
 int ieee80211_chan_to_freq (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static int wpas_mbo_validate_non_pref_chan(u8 oper_class, u8 chan, u8 reason)
{
 if (reason > MBO_NON_PREF_CHAN_REASON_INT_INTERFERENCE)
  return -1;


 if (ieee80211_chan_to_freq(((void*)0), oper_class, chan) == -1)
  return -1;

 return 0;
}
