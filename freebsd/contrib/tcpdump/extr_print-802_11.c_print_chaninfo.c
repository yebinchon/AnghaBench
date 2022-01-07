
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int netdissect_options ;


 int IEEE80211_CHAN_HALF ;
 int IEEE80211_CHAN_HT20 ;
 int IEEE80211_CHAN_HT40D ;
 int IEEE80211_CHAN_HT40U ;
 int IEEE80211_CHAN_QUARTER ;
 int IEEE80211_CHAN_TURBO ;
 int IEEE80211_RADIOTAP_MCS ;
 scalar_t__ IS_CHAN_A (int) ;
 scalar_t__ IS_CHAN_ANYG (int) ;
 scalar_t__ IS_CHAN_B (int) ;
 scalar_t__ IS_CHAN_FHSS (int) ;
 int ND_PRINT (int *) ;

__attribute__((used)) static void
print_chaninfo(netdissect_options *ndo,
               uint16_t freq, int flags, int presentflags)
{
 ND_PRINT((ndo, "%u MHz", freq));
 if (presentflags & (1 << IEEE80211_RADIOTAP_MCS)) {




  ND_PRINT((ndo, " 11n"));
 } else {
  if (IS_CHAN_FHSS(flags))
   ND_PRINT((ndo, " FHSS"));
  if (IS_CHAN_A(flags)) {
   if (flags & IEEE80211_CHAN_HALF)
    ND_PRINT((ndo, " 11a/10Mhz"));
   else if (flags & IEEE80211_CHAN_QUARTER)
    ND_PRINT((ndo, " 11a/5Mhz"));
   else
    ND_PRINT((ndo, " 11a"));
  }
  if (IS_CHAN_ANYG(flags)) {
   if (flags & IEEE80211_CHAN_HALF)
    ND_PRINT((ndo, " 11g/10Mhz"));
   else if (flags & IEEE80211_CHAN_QUARTER)
    ND_PRINT((ndo, " 11g/5Mhz"));
   else
    ND_PRINT((ndo, " 11g"));
  } else if (IS_CHAN_B(flags))
   ND_PRINT((ndo, " 11b"));
  if (flags & IEEE80211_CHAN_TURBO)
   ND_PRINT((ndo, " Turbo"));
 }



 if (flags & IEEE80211_CHAN_HT20)
  ND_PRINT((ndo, " ht/20"));
 else if (flags & IEEE80211_CHAN_HT40D)
  ND_PRINT((ndo, " ht/40-"));
 else if (flags & IEEE80211_CHAN_HT40U)
  ND_PRINT((ndo, " ht/40+"));
 ND_PRINT((ndo, " "));
}
