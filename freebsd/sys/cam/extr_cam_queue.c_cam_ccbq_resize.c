
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int array_size; } ;
struct cam_ccbq {int dev_active; int dev_openings; int total_openings; TYPE_1__ queue; } ;


 int CAM_REQ_CMP ;
 int camq_resize (TYPE_1__*,int) ;
 int fls (int) ;
 int imax (int,int) ;

u_int32_t
cam_ccbq_resize(struct cam_ccbq *ccbq, int new_size)
{
 int delta;

 delta = new_size - (ccbq->dev_active + ccbq->dev_openings);
 ccbq->total_openings += delta;
 ccbq->dev_openings += delta;

 new_size = imax(64, 1 << fls(new_size + new_size / 2));
 if (new_size > ccbq->queue.array_size)
  return (camq_resize(&ccbq->queue, new_size));
 else
  return (CAM_REQ_CMP);
}
