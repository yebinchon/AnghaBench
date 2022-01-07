
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vendor ;
typedef int u_char ;
struct fw_vendor {scalar_t__ type; scalar_t__ dev_type; int * pattern; } ;
struct TYPE_2__ {scalar_t__ vendor; } ;
struct cam_device {TYPE_1__ inq_data; } ;
struct ata_params {int * model; } ;


 scalar_t__ SID_TYPE (TYPE_1__*) ;
 scalar_t__ T_ANY ;
 scalar_t__ VENDOR_ATA ;
 int cam_strmatch (int const*,int const*,int ) ;
 int cam_strvis (int *,int *,int,int) ;
 int strlen (char*) ;
 struct fw_vendor* vendors_list ;

__attribute__((used)) static struct fw_vendor *
fw_get_vendor(struct cam_device *cam_dev, struct ata_params *ident_buf)
{
 char vendor[42];
 struct fw_vendor *vp;

 if (cam_dev == ((void*)0))
  return (((void*)0));

 if (ident_buf != ((void*)0)) {
  cam_strvis((u_char *)vendor, ident_buf->model,
      sizeof(ident_buf->model), sizeof(vendor));
  for (vp = vendors_list; vp->pattern != ((void*)0); vp++) {
   if (vp->type == VENDOR_ATA)
    return (vp);
  }
 } else {
  cam_strvis((u_char *)vendor, (u_char *)cam_dev->inq_data.vendor,
      sizeof(cam_dev->inq_data.vendor), sizeof(vendor));
 }
 for (vp = vendors_list; vp->pattern != ((void*)0); vp++) {
  if (!cam_strmatch((const u_char *)vendor,
      (const u_char *)vp->pattern, strlen(vendor))) {
   if ((vp->dev_type == T_ANY)
    || (vp->dev_type == SID_TYPE(&cam_dev->inq_data)))
    break;
  }
 }
 return (vp);
}
