
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_ccbq {int total_openings; int dev_openings; int queue; } ;


 int bzero (struct cam_ccbq*,int) ;
 scalar_t__ camq_init (int *,int ) ;
 int fls (int) ;
 int imax (int,int) ;

int
cam_ccbq_init(struct cam_ccbq *ccbq, int openings)
{
 bzero(ccbq, sizeof(*ccbq));
 if (camq_init(&ccbq->queue,
     imax(64, 1 << fls(openings + openings / 2))) != 0)
  return (1);
 ccbq->total_openings = openings;
 ccbq->dev_openings = openings;
 return (0);
}
