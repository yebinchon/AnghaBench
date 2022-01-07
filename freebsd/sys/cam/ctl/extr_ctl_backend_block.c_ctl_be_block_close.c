
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ctl_be_lun {int flags; } ;
struct TYPE_3__ {int * cred; } ;
struct TYPE_4__ {TYPE_1__ file; } ;
struct ctl_be_block_lun {int dev_type; TYPE_2__ backend; int * vn; struct ctl_be_lun cbe_lun; } ;





 int CTL_LUN_FLAG_READONLY ;
 int FREAD ;
 int FWRITE ;
 int NOCRED ;
 int crfree (int *) ;
 int curthread ;
 int panic (char*,int) ;
 int vn_close (int *,int,int ,int ) ;

__attribute__((used)) static int
ctl_be_block_close(struct ctl_be_block_lun *be_lun)
{
 struct ctl_be_lun *cbe_lun = &be_lun->cbe_lun;
 int flags;

 if (be_lun->vn) {
  flags = FREAD;
  if ((cbe_lun->flags & CTL_LUN_FLAG_READONLY) == 0)
   flags |= FWRITE;
  (void)vn_close(be_lun->vn, flags, NOCRED, curthread);
  be_lun->vn = ((void*)0);

  switch (be_lun->dev_type) {
  case 130:
   break;
  case 129:
   if (be_lun->backend.file.cred != ((void*)0)) {
    crfree(be_lun->backend.file.cred);
    be_lun->backend.file.cred = ((void*)0);
   }
   break;
  case 128:
   break;
  default:
   panic("Unexpected backend type %d", be_lun->dev_type);
   break;
  }
  be_lun->dev_type = 128;
 }
 return (0);
}
