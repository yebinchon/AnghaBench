
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ieee80211_ap_chan_report_ie {int i_class; } ;


 int printf (char*,...) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
printapchanrep(const char *tag, const u_int8_t *ie, size_t ielen, int maxlen)
{
 printf("%s", tag);
 if (verbose) {
  const struct ieee80211_ap_chan_report_ie *ap =
      (const struct ieee80211_ap_chan_report_ie *) ie;
  const char *sep = "";
  int i;

  printf("<class %u, chan:[", ap->i_class);

  for (i = 3; i < ielen; i++) {
   printf("%s%u", sep, ie[i]);
   sep = ",";
  }
  printf("]>");
 }
}
