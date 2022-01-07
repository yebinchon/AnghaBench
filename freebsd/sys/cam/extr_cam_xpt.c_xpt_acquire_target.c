
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_et {int refcount; struct cam_eb* bus; } ;
struct cam_eb {int eb_mtx; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
xpt_acquire_target(struct cam_et *target)
{
 struct cam_eb *bus = target->bus;

 mtx_lock(&bus->eb_mtx);
 target->refcount++;
 mtx_unlock(&bus->eb_mtx);
}
