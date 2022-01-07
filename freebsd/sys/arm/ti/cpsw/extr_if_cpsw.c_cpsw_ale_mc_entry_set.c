
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct cpsw_softc {int dummy; } ;


 int ALE_MCAST_FWD ;
 scalar_t__ ALE_TYPE (int*) ;
 int ALE_TYPE_ADDR ;
 int ALE_TYPE_VLAN_ADDR ;
 int CPSW_MAX_ALE_ENTRIES ;
 int ENOMEM ;
 int cpsw_ale_read_entry (struct cpsw_softc*,int,int*) ;
 int cpsw_ale_write_entry (struct cpsw_softc*,int,int*) ;

__attribute__((used)) static int
cpsw_ale_mc_entry_set(struct cpsw_softc *sc, uint8_t portmap, int vlan,
 uint8_t *mac)
{
 int free_index = -1, matching_index = -1, i;
 uint32_t ale_entry[3], ale_type;


 for (i = 10; i < CPSW_MAX_ALE_ENTRIES; i++) {
  cpsw_ale_read_entry(sc, i, ale_entry);


  if (free_index < 0 && ALE_TYPE(ale_entry) == 0)
   free_index = i;

  if ((((ale_entry[1] >> 8) & 0xFF) == mac[0]) &&
      (((ale_entry[1] >> 0) & 0xFF) == mac[1]) &&
      (((ale_entry[0] >>24) & 0xFF) == mac[2]) &&
      (((ale_entry[0] >>16) & 0xFF) == mac[3]) &&
      (((ale_entry[0] >> 8) & 0xFF) == mac[4]) &&
      (((ale_entry[0] >> 0) & 0xFF) == mac[5])) {
   matching_index = i;
   break;
  }
 }

 if (matching_index < 0) {
  if (free_index < 0)
   return (ENOMEM);
  i = free_index;
 }

 if (vlan != -1)
  ale_type = ALE_TYPE_VLAN_ADDR << 28 | vlan << 16;
 else
  ale_type = ALE_TYPE_ADDR << 28;


 ale_entry[0] = mac[2] << 24 | mac[3] << 16 | mac[4] << 8 | mac[5];
 ale_entry[1] = mac[0] << 8 | mac[1];


 ale_entry[1] |= ALE_MCAST_FWD | ale_type;


 ale_entry[2] = (portmap & 7) << 2;

 cpsw_ale_write_entry(sc, i, ale_entry);

 return 0;
}
