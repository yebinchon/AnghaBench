
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ vdev_state; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
typedef scalar_t__ boolean_t ;


 int ENXIO ;
 int VDEV_LABEL_CREATE ;
 int VDEV_LABEL_REPLACE ;
 scalar_t__ VDEV_STATE_HEALTHY ;
 int vdev_close (TYPE_1__*) ;
 int vdev_dtl_load (TYPE_1__*) ;
 int vdev_label_init (TYPE_1__*,int ,int ) ;
 int vdev_open (TYPE_1__*) ;

int
vdev_create(vdev_t *vd, uint64_t txg, boolean_t isreplacing)
{
 int error;






 error = vdev_open(vd);

 if (error || vd->vdev_state != VDEV_STATE_HEALTHY) {
  vdev_close(vd);
  return (error ? error : ENXIO);
 }




 if ((error = vdev_dtl_load(vd)) != 0 ||
     (error = vdev_label_init(vd, txg, isreplacing ?
     VDEV_LABEL_REPLACE : VDEV_LABEL_CREATE)) != 0) {
  vdev_close(vd);
  return (error);
 }

 return (0);
}
