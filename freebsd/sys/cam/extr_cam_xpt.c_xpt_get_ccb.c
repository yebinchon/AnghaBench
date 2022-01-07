
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct cam_periph {TYPE_2__* path; int periph_allocated; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {int ccbq; } ;


 int M_CAMCCB ;
 int M_WAITOK ;
 int M_ZERO ;
 int cam_ccbq_take_opening (int *) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 union ccb* malloc (int,int ,int) ;

__attribute__((used)) static union ccb *
xpt_get_ccb(struct cam_periph *periph)
{
 union ccb *new_ccb;

 cam_periph_unlock(periph);
 new_ccb = malloc(sizeof(*new_ccb), M_CAMCCB, M_ZERO|M_WAITOK);
 cam_periph_lock(periph);
 periph->periph_allocated++;
 cam_ccbq_take_opening(&periph->path->device->ccbq);
 return (new_ccb);
}
