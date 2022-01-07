
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef scalar_t__ u_int32_t ;
struct TYPE_3__ {scalar_t__ priority; } ;
struct ccb_hdr {TYPE_1__ pinfo; } ;
struct cam_periph {scalar_t__ immediate_priority; int ccb_list; int path; } ;
struct TYPE_4__ {int sle; } ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int MA_OWNED ;
 int PRIBIO ;
 struct ccb_hdr* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int cam_periph_assert (struct cam_periph*,int ) ;
 int cam_periph_sleep (struct cam_periph*,int *,int ,char*,int ) ;
 TYPE_2__ periph_links ;
 int xpt_run_allocq (struct cam_periph*,int ) ;

union ccb *
cam_periph_getccb(struct cam_periph *periph, u_int32_t priority)
{
 struct ccb_hdr *ccb_h;

 CAM_DEBUG(periph->path, CAM_DEBUG_TRACE, ("cam_periph_getccb\n"));
 cam_periph_assert(periph, MA_OWNED);
 while ((ccb_h = SLIST_FIRST(&periph->ccb_list)) == ((void*)0) ||
     ccb_h->pinfo.priority != priority) {
  if (priority < periph->immediate_priority) {
   periph->immediate_priority = priority;
   xpt_run_allocq(periph, 0);
  } else
   cam_periph_sleep(periph, &periph->ccb_list, PRIBIO,
       "cgticb", 0);
 }
 SLIST_REMOVE_HEAD(&periph->ccb_list, periph_links.sle);
 return ((union ccb *)ccb_h);
}
