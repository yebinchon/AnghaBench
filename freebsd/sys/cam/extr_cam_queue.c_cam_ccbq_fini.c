
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_ccbq {int queue; } ;


 int camq_fini (int *) ;

void
cam_ccbq_fini(struct cam_ccbq *ccbq)
{

 camq_fini(&ccbq->queue);
}
