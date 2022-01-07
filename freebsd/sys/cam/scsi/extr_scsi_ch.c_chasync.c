
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ccb_getdev {int inq_data; int protocol; } ;
struct cam_periph {int dummy; } ;
struct cam_path {int dummy; } ;
typedef int cam_status ;



 int CAM_PERIPH_BIO ;
 int CAM_REQ_CMP ;
 int CAM_REQ_INPROG ;
 int PROTO_SCSI ;
 int SID_QUAL (int *) ;
 int SID_QUAL_LU_CONNECTED ;
 int SID_TYPE (int *) ;
 int T_CHANGER ;
 int cam_periph_alloc (int ,int ,int ,int ,char*,int ,struct cam_path*,void (*) (void*,int,struct cam_path*,void*),int const,struct ccb_getdev*) ;
 int cam_periph_async (struct cam_periph*,int,struct cam_path*,void*) ;
 int chcleanup ;
 int choninvalidate ;
 int chregister ;
 int chstart ;
 int printf (char*,int) ;

__attribute__((used)) static void
chasync(void *callback_arg, u_int32_t code, struct cam_path *path, void *arg)
{
 struct cam_periph *periph;

 periph = (struct cam_periph *)callback_arg;

 switch(code) {
 case 128:
 {
  struct ccb_getdev *cgd;
  cam_status status;

  cgd = (struct ccb_getdev *)arg;
  if (cgd == ((void*)0))
   break;

  if (cgd->protocol != PROTO_SCSI)
   break;
  if (SID_QUAL(&cgd->inq_data) != SID_QUAL_LU_CONNECTED)
   break;
  if (SID_TYPE(&cgd->inq_data)!= T_CHANGER)
   break;






  status = cam_periph_alloc(chregister, choninvalidate,
       chcleanup, chstart, "ch",
       CAM_PERIPH_BIO, path,
       chasync, 128, cgd);

  if (status != CAM_REQ_CMP
   && status != CAM_REQ_INPROG)
   printf("chasync: Unable to probe new device "
          "due to status 0x%x\n", status);

  break;

 }
 default:
  cam_periph_async(periph, code, path, arg);
  break;
 }
}
