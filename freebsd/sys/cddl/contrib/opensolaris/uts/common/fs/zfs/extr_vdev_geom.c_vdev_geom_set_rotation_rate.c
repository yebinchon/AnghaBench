
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vdev_nonrot; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint16_t ;
struct g_consumer {int dummy; } ;


 int B_FALSE ;
 int B_TRUE ;
 int g_getattr (char*,struct g_consumer*,int*) ;

__attribute__((used)) static void
vdev_geom_set_rotation_rate(vdev_t *vd, struct g_consumer *cp)
{
 int error;
 uint16_t rate;

 error = g_getattr("GEOM::rotation_rate", cp, &rate);
 if (error == 0 && rate == 1)
  vd->vdev_nonrot = B_TRUE;
 else
  vd->vdev_nonrot = B_FALSE;
}
