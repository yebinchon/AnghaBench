
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_4__ {int status; int path; void* func_code; } ;
struct ccb_dev_advinfo {char* buf; TYPE_2__ ccb_h; int bufsiz; int flags; void* buftype; } ;
struct cam_path {int dummy; } ;
struct TYPE_3__ {int num_set; int physpath; } ;
typedef TYPE_1__ ses_setphyspath_callback_args_t ;
typedef int enc_softc_t ;
typedef int enc_element_t ;


 int CAM_DEV_QFRZN ;
 int CAM_PRIORITY_NORMAL ;
 int CAM_REQ_CMP ;
 int CDAI_FLAG_NONE ;
 int CDAI_FLAG_STORE ;
 void* CDAI_TYPE_PHYS_PATH ;
 int FALSE ;
 int MAXPATHLEN ;
 int M_SCSIENC ;
 int M_WAITOK ;
 int M_ZERO ;
 void* XPT_DEV_ADVINFO ;
 int cam_release_devq (int ,int ,int ,int ,int ) ;
 int free (char*,int ) ;
 char* malloc (int ,int ,int) ;
 char* sbuf_data (int ) ;
 int sbuf_len (int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int xpt_action (union ccb*) ;
 int xpt_path_lock (struct cam_path*) ;
 int xpt_path_unlock (struct cam_path*) ;
 int xpt_setup_ccb (TYPE_2__*,struct cam_path*,int ) ;

__attribute__((used)) static void
ses_setphyspath_callback(enc_softc_t *enc, enc_element_t *elm,
    struct cam_path *path, void *arg)
{
 struct ccb_dev_advinfo cdai;
 ses_setphyspath_callback_args_t *args;
 char *old_physpath;

 args = (ses_setphyspath_callback_args_t *)arg;
 old_physpath = malloc(MAXPATHLEN, M_SCSIENC, M_WAITOK|M_ZERO);
 xpt_path_lock(path);
 xpt_setup_ccb(&cdai.ccb_h, path, CAM_PRIORITY_NORMAL);
 cdai.ccb_h.func_code = XPT_DEV_ADVINFO;
 cdai.buftype = CDAI_TYPE_PHYS_PATH;
 cdai.flags = CDAI_FLAG_NONE;
 cdai.bufsiz = MAXPATHLEN;
 cdai.buf = old_physpath;
 xpt_action((union ccb *)&cdai);
 if ((cdai.ccb_h.status & CAM_DEV_QFRZN) != 0)
  cam_release_devq(cdai.ccb_h.path, 0, 0, 0, FALSE);

 if (strcmp(old_physpath, sbuf_data(args->physpath)) != 0) {

  xpt_setup_ccb(&cdai.ccb_h, path, CAM_PRIORITY_NORMAL);
  cdai.ccb_h.func_code = XPT_DEV_ADVINFO;
  cdai.buftype = CDAI_TYPE_PHYS_PATH;
  cdai.flags = CDAI_FLAG_STORE;
  cdai.bufsiz = sbuf_len(args->physpath);
  cdai.buf = sbuf_data(args->physpath);
  xpt_action((union ccb *)&cdai);
  if ((cdai.ccb_h.status & CAM_DEV_QFRZN) != 0)
   cam_release_devq(cdai.ccb_h.path, 0, 0, 0, FALSE);
  if (cdai.ccb_h.status == CAM_REQ_CMP)
   args->num_set++;
 }
 xpt_path_unlock(path);
 free(old_physpath, M_SCSIENC);
}
