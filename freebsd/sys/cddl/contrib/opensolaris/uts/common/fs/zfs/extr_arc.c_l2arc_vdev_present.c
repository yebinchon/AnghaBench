
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vdev_t ;
struct TYPE_5__ {int * l2ad_vdev; } ;
typedef TYPE_1__ l2arc_dev_t ;
typedef int boolean_t ;


 int l2arc_dev_list ;
 int l2arc_dev_mtx ;
 TYPE_1__* list_head (int ) ;
 TYPE_1__* list_next (int ,TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

boolean_t
l2arc_vdev_present(vdev_t *vd)
{
 l2arc_dev_t *dev;

 mutex_enter(&l2arc_dev_mtx);
 for (dev = list_head(l2arc_dev_list); dev != ((void*)0);
     dev = list_next(l2arc_dev_list, dev)) {
  if (dev->l2ad_vdev == vd)
   break;
 }
 mutex_exit(&l2arc_dev_mtx);

 return (dev != ((void*)0));
}
