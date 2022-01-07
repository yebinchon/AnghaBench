
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_devq {int dummy; } ;


 int cam_devq_free (struct cam_devq*) ;

void
cam_simq_free(struct cam_devq *devq)
{
 cam_devq_free(devq);
}
