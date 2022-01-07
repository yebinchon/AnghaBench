
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_2__ {int status; int func_code; } ;
struct ccb_en_lun {int grp6_len; int grp7_len; int enable; TYPE_1__ ccb_h; } ;
struct cam_path {int dummy; } ;
typedef int cam_status ;


 int CAM_PRIORITY_NORMAL ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 int XPT_EN_LUN ;
 int xpt_action (union ccb*) ;
 int xpt_print (struct cam_path*,char*,char*,int) ;
 int xpt_setup_ccb (TYPE_1__*,struct cam_path*,int ) ;

__attribute__((used)) static cam_status
targendislun(struct cam_path *path, int enable, int grp6_len, int grp7_len)
{
 struct ccb_en_lun en_ccb;
 cam_status status;


 xpt_setup_ccb(&en_ccb.ccb_h, path, CAM_PRIORITY_NORMAL);
 en_ccb.ccb_h.func_code = XPT_EN_LUN;

 en_ccb.grp6_len = grp6_len;
 en_ccb.grp7_len = grp7_len;
 en_ccb.enable = enable ? 1 : 0;
 xpt_action((union ccb *)&en_ccb);
 status = en_ccb.ccb_h.status & CAM_STATUS_MASK;
 if (status != CAM_REQ_CMP) {
  xpt_print(path, "%sable lun CCB rejected, status %#x\n",
      enable ? "en" : "dis", status);
 }
 return (status);
}
