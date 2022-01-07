
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ieee80211_tdma_param {int tdma_version; int tdma_slot; int tdma_slotcnt; int tdma_bintval; int* tdma_inuse; int tdma_slotlen; } ;


 int LE_READ_2 (int *) ;
 int printf (char*,...) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
printtdmaie(const char *tag, const u_int8_t *ie, size_t ielen, int maxlen)
{
 printf("%s", tag);
 if (verbose && ielen >= sizeof(struct ieee80211_tdma_param)) {
  const struct ieee80211_tdma_param *tdma =
     (const struct ieee80211_tdma_param *) ie;


  printf("<v%u slot:%u slotcnt:%u slotlen:%u bintval:%u inuse:0x%x>",
      tdma->tdma_version, tdma->tdma_slot, tdma->tdma_slotcnt,
      LE_READ_2(&tdma->tdma_slotlen), tdma->tdma_bintval,
      tdma->tdma_inuse[0]);
 }
}
