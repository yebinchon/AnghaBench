
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nameidata {TYPE_1__* ni_vp; } ;
struct ctl_lun_req {int error_str; } ;
struct ctl_be_lun {scalar_t__ lun_type; void* serseq; int options; int flags; } ;
struct ctl_be_block_lun {char* dev_path; scalar_t__ dispatch; TYPE_1__* vn; struct ctl_be_lun cbe_lun; } ;
struct TYPE_3__ {scalar_t__ v_type; } ;


 int CTL_LUN_FLAG_READONLY ;
 void* CTL_LUN_SERSEQ_OFF ;
 void* CTL_LUN_SERSEQ_ON ;
 void* CTL_LUN_SERSEQ_READ ;
 int EACCES ;
 int EINVAL ;
 int EROFS ;
 int FOLLOW ;
 int FREAD ;
 int FWRITE ;
 int LOOKUP ;
 int M_CTLBLK ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int ,int ,char*,int ) ;
 scalar_t__ T_DIRECT ;
 int UIO_SYSSPACE ;
 int VOP_UNLOCK (TYPE_1__*,int ) ;
 scalar_t__ VREG ;
 int asprintf (char**,int ,char*,char*) ;
 int ctl_be_block_close (struct ctl_be_block_lun*) ;
 scalar_t__ ctl_be_block_dispatch_dev ;
 int ctl_be_block_open_dev (struct ctl_be_block_lun*,struct ctl_lun_req*) ;
 int ctl_be_block_open_file (struct ctl_be_block_lun*,struct ctl_lun_req*) ;
 int curthread ;
 char* dnvlist_get_string (int ,char*,int *) ;
 int free (char*,int ) ;
 int pwd_ensure_dirs () ;
 int * rootvnode ;
 int snprintf (int ,int,char*,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*,int ) ;
 scalar_t__ vn_isdisk (TYPE_1__*,int*) ;
 int vn_open (struct nameidata*,int*,int ,int *) ;

__attribute__((used)) static int
ctl_be_block_open(struct ctl_be_block_lun *be_lun, struct ctl_lun_req *req)
{
 struct ctl_be_lun *cbe_lun = &be_lun->cbe_lun;
 struct nameidata nd;
 const char *value;
 int error, flags;

 error = 0;
 if (rootvnode == ((void*)0)) {
  snprintf(req->error_str, sizeof(req->error_str),
    "Root filesystem is not mounted");
  return (1);
 }
 pwd_ensure_dirs();

 value = dnvlist_get_string(cbe_lun->options, "file", ((void*)0));
 if (value == ((void*)0)) {
  snprintf(req->error_str, sizeof(req->error_str),
    "no file argument specified");
  return (1);
 }
 free(be_lun->dev_path, M_CTLBLK);
 be_lun->dev_path = strdup(value, M_CTLBLK);

 flags = FREAD;
 value = dnvlist_get_string(cbe_lun->options, "readonly", ((void*)0));
 if (value != ((void*)0)) {
  if (strcmp(value, "on") != 0)
   flags |= FWRITE;
 } else if (cbe_lun->lun_type == T_DIRECT)
  flags |= FWRITE;

again:
 NDINIT(&nd, LOOKUP, FOLLOW, UIO_SYSSPACE, be_lun->dev_path, curthread);
 error = vn_open(&nd, &flags, 0, ((void*)0));
 if ((error == EROFS || error == EACCES) && (flags & FWRITE)) {
  flags &= ~FWRITE;
  goto again;
 }
 if (error) {






  if (be_lun->dev_path[0] != '/') {
   char *dev_name;

   asprintf(&dev_name, M_CTLBLK, "/dev/%s",
    be_lun->dev_path);
   free(be_lun->dev_path, M_CTLBLK);
   be_lun->dev_path = dev_name;
   goto again;
  }
  snprintf(req->error_str, sizeof(req->error_str),
      "error opening %s: %d", be_lun->dev_path, error);
  return (error);
 }
 if (flags & FWRITE)
  cbe_lun->flags &= ~CTL_LUN_FLAG_READONLY;
 else
  cbe_lun->flags |= CTL_LUN_FLAG_READONLY;

 NDFREE(&nd, NDF_ONLY_PNBUF);
 be_lun->vn = nd.ni_vp;


 if (vn_isdisk(be_lun->vn, &error)) {
  error = ctl_be_block_open_dev(be_lun, req);
 } else if (be_lun->vn->v_type == VREG) {
  error = ctl_be_block_open_file(be_lun, req);
 } else {
  error = EINVAL;
  snprintf(req->error_str, sizeof(req->error_str),
    "%s is not a disk or plain file", be_lun->dev_path);
 }
 VOP_UNLOCK(be_lun->vn, 0);

 if (error != 0)
  ctl_be_block_close(be_lun);
 cbe_lun->serseq = CTL_LUN_SERSEQ_OFF;
 if (be_lun->dispatch != ctl_be_block_dispatch_dev)
  cbe_lun->serseq = CTL_LUN_SERSEQ_READ;
 value = dnvlist_get_string(cbe_lun->options, "serseq", ((void*)0));
 if (value != ((void*)0) && strcmp(value, "on") == 0)
  cbe_lun->serseq = CTL_LUN_SERSEQ_ON;
 else if (value != ((void*)0) && strcmp(value, "read") == 0)
  cbe_lun->serseq = CTL_LUN_SERSEQ_READ;
 else if (value != ((void*)0) && strcmp(value, "off") == 0)
  cbe_lun->serseq = CTL_LUN_SERSEQ_OFF;
 return (0);
}
