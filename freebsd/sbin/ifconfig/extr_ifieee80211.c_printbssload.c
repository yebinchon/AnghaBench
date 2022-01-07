
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_bss_load_ie {int chan_load; int aac; int sta_count; } ;


 int LE_READ_2 (int *) ;
 int printf (char*,...) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
printbssload(const char *tag, const uint8_t *ie, size_t ielen, int maxlen)
{
 printf("%s", tag);
 if (verbose) {
  const struct ieee80211_bss_load_ie *bssload =
      (const struct ieee80211_bss_load_ie *) ie;
  printf("<sta count %d, chan load %d, aac %d>",
      LE_READ_2(&bssload->sta_count),
      bssload->chan_load,
      bssload->aac);
 }
}
