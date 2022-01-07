
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cpsw_softc {int dummy; } ;


 scalar_t__ ALE_TYPE (int*) ;
 int ALE_TYPE_VLAN ;
 int ALE_VLAN (int*) ;
 int CPSW_MAX_ALE_ENTRIES ;
 int cpsw_ale_read_entry (struct cpsw_softc*,int,int*) ;
 int cpsw_ale_write_entry (struct cpsw_softc*,int,int*) ;

__attribute__((used)) static int
cpsw_ale_update_vlan_table(struct cpsw_softc *sc, int vlan, int ports,
 int untag, int mcregflood, int mcunregflood)
{
 int free_index, i, matching_index;
 uint32_t ale_entry[3];

 free_index = matching_index = -1;

 for (i = 5; i < CPSW_MAX_ALE_ENTRIES; i++) {
  cpsw_ale_read_entry(sc, i, ale_entry);


  if (free_index < 0 && ALE_TYPE(ale_entry) == 0)
   free_index = i;

  if (ALE_VLAN(ale_entry) == vlan) {
   matching_index = i;
   break;
  }
 }

 if (matching_index < 0) {
  if (free_index < 0)
   return (-1);
  i = free_index;
 }

 ale_entry[0] = (untag & 7) << 24 | (mcregflood & 7) << 16 |
     (mcunregflood & 7) << 8 | (ports & 7);
 ale_entry[1] = ALE_TYPE_VLAN << 28 | vlan << 16;
 ale_entry[2] = 0;
 cpsw_ale_write_entry(sc, i, ale_entry);

 return (0);
}
