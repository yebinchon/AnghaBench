
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* vdev_tsd; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_9__ {int vd_ldi_cbs; int lcb_id; } ;
typedef TYPE_2__ vdev_disk_t ;
typedef TYPE_2__ vdev_disk_ldi_cb_t ;


 int kmem_free (TYPE_2__*,int) ;
 int ldi_ev_remove_callbacks (int ) ;
 int list_destroy (int *) ;
 TYPE_2__* list_head (int *) ;
 int list_remove (int *,TYPE_2__*) ;

__attribute__((used)) static void
vdev_disk_free(vdev_t *vd)
{
 vdev_disk_t *dvd = vd->vdev_tsd;
 vdev_disk_ldi_cb_t *lcb;

 if (dvd == ((void*)0))
  return;





 while ((lcb = list_head(&dvd->vd_ldi_cbs)) != ((void*)0)) {
  list_remove(&dvd->vd_ldi_cbs, lcb);
  (void) ldi_ev_remove_callbacks(lcb->lcb_id);
  kmem_free(lcb, sizeof (vdev_disk_ldi_cb_t));
 }
 list_destroy(&dvd->vd_ldi_cbs);
 kmem_free(dvd, sizeof (vdev_disk_t));
 vd->vdev_tsd = ((void*)0);
}
