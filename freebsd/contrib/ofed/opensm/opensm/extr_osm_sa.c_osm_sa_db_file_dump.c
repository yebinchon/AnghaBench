
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dirty; } ;
struct TYPE_6__ {int lock; TYPE_1__ sa; } ;
typedef TYPE_2__ osm_opensm_t ;


 scalar_t__ FALSE ;
 int cl_plock_acquire (int *) ;
 int cl_plock_release (int *) ;
 int opensm_dump_to_file (TYPE_2__*,char*,int ) ;
 int sa_dump_all_sa ;

int osm_sa_db_file_dump(osm_opensm_t * p_osm)
{
 int res = 1;

 cl_plock_acquire(&p_osm->lock);
 if (p_osm->sa.dirty) {
  res = opensm_dump_to_file(
   p_osm, "opensm-sa.dump", sa_dump_all_sa);
  if (!res)
   p_osm->sa.dirty = FALSE;
 }
 cl_plock_release(&p_osm->lock);

 return res;
}
