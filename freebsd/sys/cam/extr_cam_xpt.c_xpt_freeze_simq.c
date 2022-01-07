
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int32_t ;
typedef scalar_t__ u_int ;
struct cam_sim {struct cam_devq* devq; } ;
struct TYPE_2__ {int qfrozen_cnt; } ;
struct cam_devq {int send_mtx; TYPE_1__ send_queue; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

u_int32_t
xpt_freeze_simq(struct cam_sim *sim, u_int count)
{
 struct cam_devq *devq;
 uint32_t freeze;

 devq = sim->devq;
 mtx_lock(&devq->send_mtx);
 freeze = (devq->send_queue.qfrozen_cnt += count);
 mtx_unlock(&devq->send_mtx);
 return (freeze);
}
