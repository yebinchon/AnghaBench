
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int8_t ;
struct TYPE_2__ {int tx_highest; int tx_mcs_map; int rx_highest; int rx_mcs_map; } ;
struct ieee80211_ie_vhtcap {TYPE_1__ supp_mcs; int vht_cap_info; } ;


 int LE_READ_2 (int *) ;
 int LE_READ_4 (int *) ;
 int printf (char*,...) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
printvhtcap(const char *tag, const u_int8_t *ie, size_t ielen, int maxlen)
{
 printf("%s", tag);
 if (verbose) {
  const struct ieee80211_ie_vhtcap *vhtcap =
      (const struct ieee80211_ie_vhtcap *) ie;
  uint32_t vhtcap_info = LE_READ_4(&vhtcap->vht_cap_info);

  printf("<cap 0x%08x", vhtcap_info);
  printf(" rx_mcs_map 0x%x",
      LE_READ_2(&vhtcap->supp_mcs.rx_mcs_map));
  printf(" rx_highest %d",
      LE_READ_2(&vhtcap->supp_mcs.rx_highest) & 0x1fff);
  printf(" tx_mcs_map 0x%x",
      LE_READ_2(&vhtcap->supp_mcs.tx_mcs_map));
  printf(" tx_highest %d",
      LE_READ_2(&vhtcap->supp_mcs.tx_highest) & 0x1fff);

  printf(">");
 }
}
