
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ccb_getdev {int protocol; } ;
struct cam_status_entry {char* status_text; } ;
struct cam_periph {int dummy; } ;
struct cam_path {int dummy; } ;
typedef int cam_status ;



 int CAM_PERIPH_BIO ;
 int CAM_REQ_CMP ;
 int CAM_REQ_INPROG ;
 int PROTO_SCSI ;
 struct cam_status_entry* cam_fetch_status_entry (int) ;
 int cam_periph_alloc (int ,int ,int ,int *,char*,int ,struct cam_path*,void (*) (void*,int,struct cam_path*,void*),int const,struct ccb_getdev*) ;
 int cam_periph_async (struct cam_periph*,int,struct cam_path*,void*) ;
 int printf (char*,int,char*) ;
 int sgcleanup ;
 int sgoninvalidate ;
 int sgregister ;

__attribute__((used)) static void
sgasync(void *callback_arg, uint32_t code, struct cam_path *path, void *arg)
{
 struct cam_periph *periph;

 periph = (struct cam_periph *)callback_arg;

 switch (code) {
 case 128:
 {
  struct ccb_getdev *cgd;
  cam_status status;

  cgd = (struct ccb_getdev *)arg;
  if (cgd == ((void*)0))
   break;

  if (cgd->protocol != PROTO_SCSI)
   break;





  status = cam_periph_alloc(sgregister, sgoninvalidate,
       sgcleanup, ((void*)0), "sg",
       CAM_PERIPH_BIO, path,
       sgasync, 128, cgd);
  if ((status != CAM_REQ_CMP) && (status != CAM_REQ_INPROG)) {
   const struct cam_status_entry *entry;

   entry = cam_fetch_status_entry(status);
   printf("sgasync: Unable to attach new device "
    "due to status %#x: %s\n", status, entry ?
    entry->status_text : "Unknown");
  }
  break;
 }
 default:
  cam_periph_async(periph, code, path, arg);
  break;
 }
}
