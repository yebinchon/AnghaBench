
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rm_firstdatacol; } ;
typedef TYPE_1__ raidz_map_t ;


 int panic (char*) ;
 int vdev_raidz_generate_parity_p (TYPE_1__*) ;
 int vdev_raidz_generate_parity_pq (TYPE_1__*) ;
 int vdev_raidz_generate_parity_pqr (TYPE_1__*) ;

__attribute__((used)) static void
vdev_raidz_generate_parity(raidz_map_t *rm)
{
 switch (rm->rm_firstdatacol) {
 case 1:
  vdev_raidz_generate_parity_p(rm);
  break;
 case 2:
  vdev_raidz_generate_parity_pq(rm);
  break;
 case 3:
  vdev_raidz_generate_parity_pqr(rm);
  break;
 default:
  panic("invalid RAID-Z configuration");
 }
}
