
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;
struct sg_softc {int device_stats; } ;
struct cam_periph {struct sg_softc* softc; } ;


 int devstat_start_transaction (int ,int *) ;
 int xpt_action (union ccb*) ;

__attribute__((used)) static int
sgsendrdwr(struct cam_periph *periph, union ccb *ccb)
{
 struct sg_softc *softc;

 softc = periph->softc;
 devstat_start_transaction(softc->device_stats, ((void*)0));
 xpt_action(ccb);
 return (0);
}
