
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef int u_int16_t ;
struct TYPE_2__ {int status; int func_code; } ;
struct ccb_pathinq {int target_sprt; int hba_inquiry; TYPE_1__ ccb_h; } ;
typedef int cpi ;
typedef int cam_status ;


 int CAM_PATH_INVALID ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 int PIT_PROCESSOR ;
 int XPT_PATH_INQ ;
 int bzero (struct ccb_pathinq*,int) ;
 int fprintf (int ,char*,...) ;
 int send_ccb (union ccb*,int) ;
 int stderr ;

__attribute__((used)) static cam_status
get_sim_flags(u_int16_t *flags)
{
 struct ccb_pathinq cpi;
 cam_status status;


 bzero(&cpi, sizeof(cpi));
 cpi.ccb_h.func_code = XPT_PATH_INQ;
 send_ccb((union ccb *)&cpi, 1);
 status = cpi.ccb_h.status & CAM_STATUS_MASK;
 if (status != CAM_REQ_CMP) {
  fprintf(stderr, "CPI failed, status %#x\n", status);
  return (status);
 }


 if ((cpi.target_sprt & PIT_PROCESSOR) == 0) {
  fprintf(stderr, "HBA does not support target mode\n");
  status = CAM_PATH_INVALID;
  return (status);
 }

 *flags = cpi.hba_inquiry;
 return (status);
}
