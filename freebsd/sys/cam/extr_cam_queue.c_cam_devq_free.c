
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_devq {int send_mtx; int send_queue; } ;


 int M_CAMDEVQ ;
 int camq_fini (int *) ;
 int free (struct cam_devq*,int ) ;
 int mtx_destroy (int *) ;

void
cam_devq_free(struct cam_devq *devq)
{

 camq_fini(&devq->send_queue);
 mtx_destroy(&devq->send_mtx);
 free(devq, M_CAMDEVQ);
}
