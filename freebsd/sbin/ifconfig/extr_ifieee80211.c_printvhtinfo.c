
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ieee80211_ie_vht_operation {int chan_width; int center_freq_seg1_idx; int center_freq_seg2_idx; int basic_mcs_set; } ;


 int LE_READ_2 (int *) ;
 int printf (char*,...) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
printvhtinfo(const char *tag, const u_int8_t *ie, size_t ielen, int maxlen)
{
 printf("%s", tag);
 if (verbose) {
  const struct ieee80211_ie_vht_operation *vhtinfo =
      (const struct ieee80211_ie_vht_operation *) ie;

  printf("<chw %d freq1_idx %d freq2_idx %d basic_mcs_set 0x%04x>",
      vhtinfo->chan_width,
      vhtinfo->center_freq_seg1_idx,
      vhtinfo->center_freq_seg2_idx,
      LE_READ_2(&vhtinfo->basic_mcs_set));
 }
}
