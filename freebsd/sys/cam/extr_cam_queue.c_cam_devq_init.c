
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_devq {int send_openings; scalar_t__ send_active; int send_queue; int send_mtx; } ;


 int MTX_DEF ;
 int bzero (struct cam_devq*,int) ;
 scalar_t__ camq_init (int *,int) ;
 int mtx_init (int *,char*,int *,int ) ;

int
cam_devq_init(struct cam_devq *devq, int devices, int openings)
{

 bzero(devq, sizeof(*devq));
 mtx_init(&devq->send_mtx, "CAM queue lock", ((void*)0), MTX_DEF);
 if (camq_init(&devq->send_queue, devices) != 0)
  return (1);
 devq->send_openings = openings;
 devq->send_active = 0;
 return (0);
}
