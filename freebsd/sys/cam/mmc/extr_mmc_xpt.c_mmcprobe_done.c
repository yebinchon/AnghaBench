
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int priority; } ;
struct TYPE_13__ {int func_code; struct cam_path* path; TYPE_1__ pinfo; } ;
struct TYPE_10__ {int error; int* resp; int arg; } ;
struct ccb_mmcio {TYPE_2__ cmd; } ;
union ccb {TYPE_5__ ccb_h; struct ccb_mmcio mmcio; } ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_int32_t ;
struct mmc_params {int card_features; int io_ocr; int card_ocr; int card_rca; int * card_csd; int * card_cid; int sdio_func_count; } ;
struct cam_periph {TYPE_4__* path; scalar_t__ softc; } ;
struct cam_path {TYPE_7__* device; } ;
struct TYPE_14__ {int action; int flags; } ;
typedef TYPE_6__ mmcprobe_softc ;
struct TYPE_15__ {int flags; struct mmc_params mmc_ident_data; int protocol; } ;
struct TYPE_12__ {TYPE_3__* device; } ;
struct TYPE_11__ {int flags; } ;


 int AC_FOUND_DEVICE ;
 int AC_LOST_DEVICE ;
 int CAM_DEBUG (struct cam_path*,int ,char*) ;
 int CAM_DEBUG_PROBE ;
 int CAM_DEV_UNCONFIGURED ;
 int CARD_FEATURE_18V ;
 int CARD_FEATURE_MEMORY ;
 int CARD_FEATURE_MMC ;
 int CARD_FEATURE_SD20 ;
 int CARD_FEATURE_SDHC ;
 int CARD_FEATURE_SDIO ;
 int FALSE ;
 int MMC_ERR_NONE ;
 int MMC_OCR_CARD_BUSY ;
 int MMC_OCR_CCS ;
 int MMC_OCR_S18A ;
 int MMC_OCR_VOLTAGE ;
 int MMC_PROPOSED_RCA ;
 int PROBE_DONE ;
 int PROBE_FLAG_ACMD_SENT ;



 int PROBE_INVALID ;
 int PROBE_SET_ACTION (TYPE_6__*,int const) ;
 int PROTO_MMCSD ;
 int R4_IO_MEM_PRESENT ;
 int R4_IO_NUM_FUNCTIONS (int) ;
 int R4_IO_OCR_MASK ;
 int XPT_GDEV_TYPE ;
 int cam_periph_invalidate (struct cam_periph*) ;
 int cam_periph_release_locked (struct cam_periph*) ;
 int cam_release_devq (struct cam_path*,int ,int ,int ,int ) ;
 int memcpy (int *,int*,int) ;
 int panic (char*) ;
 int printf (char*,...) ;
 int xpt_acquire_device (TYPE_7__*) ;
 int xpt_action (union ccb*) ;
 int xpt_async (int ,struct cam_path*,union ccb*) ;
 int xpt_release_ccb (union ccb*) ;
 int xpt_schedule (struct cam_periph*,int ) ;

__attribute__((used)) static void
mmcprobe_done(struct cam_periph *periph, union ccb *done_ccb)
{
 mmcprobe_softc *softc;
 struct cam_path *path;

 int err;
 struct ccb_mmcio *mmcio;
 u_int32_t priority;

 CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE, ("mmcprobe_done\n"));
 softc = (mmcprobe_softc *)periph->softc;
 path = done_ccb->ccb_h.path;
 priority = done_ccb->ccb_h.pinfo.priority;

 switch (softc->action) {
 case 134:

 case 137:
 {
  printf("Starting completion of PROBE_RESET\n");
  CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE, ("done with PROBE_RESET\n"));
  mmcio = &done_ccb->mmcio;
  err = mmcio->cmd.error;

  if (err != MMC_ERR_NONE) {
   CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
      ("GO_IDLE_STATE failed with error %d\n",
       err));


   if ((path->device->flags & CAM_DEV_UNCONFIGURED) == 0) {
    xpt_async(AC_LOST_DEVICE, path, ((void*)0));
   }
   PROBE_SET_ACTION(softc, PROBE_INVALID);
   break;
  }
  path->device->protocol = PROTO_MMCSD;
  PROBE_SET_ACTION(softc, 129);
  break;
 }
 case 129:
 {
  mmcio = &done_ccb->mmcio;
  err = mmcio->cmd.error;
  struct mmc_params *mmcp = &path->device->mmc_ident_data;

  if (err != MMC_ERR_NONE || mmcio->cmd.resp[0] != 0x1AA) {
   CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
      ("IF_COND: error %d, pattern %08x\n",
       err, mmcio->cmd.resp[0]));
  } else {
   mmcp->card_features |= CARD_FEATURE_SD20;
   CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
      ("SD 2.0 interface conditions: OK\n"));

  }
                PROBE_SET_ACTION(softc, 132);
  break;
 }
        case 132:
        {
  mmcio = &done_ccb->mmcio;
  err = mmcio->cmd.error;

                CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
                          ("SDIO_RESET: error %d, CCCR CTL register: %08x\n",
                           err, mmcio->cmd.resp[0]));
                PROBE_SET_ACTION(softc, 133);
                break;
        }
        case 133:
        {
  mmcio = &done_ccb->mmcio;
  err = mmcio->cmd.error;
                struct mmc_params *mmcp = &path->device->mmc_ident_data;

                CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
                          ("SDIO_INIT: error %d, %08x %08x %08x %08x\n",
                           err, mmcio->cmd.resp[0],
                           mmcio->cmd.resp[1],
                           mmcio->cmd.resp[2],
                           mmcio->cmd.resp[3]));





  if (err != MMC_ERR_NONE) {
                        PROBE_SET_ACTION(softc, 130);
                        break;
  }
                mmcp->card_features |= CARD_FEATURE_SDIO;
                uint32_t ioifcond = mmcio->cmd.resp[0];
                uint32_t io_ocr = ioifcond & R4_IO_OCR_MASK;

                mmcp->sdio_func_count = R4_IO_NUM_FUNCTIONS(ioifcond);
                CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
                          ("SDIO card: %d functions\n", mmcp->sdio_func_count));
                if (io_ocr == 0) {
                    CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
                              ("SDIO OCR invalid?!\n"));
                    break;
                }

                if (io_ocr != 0 && mmcp->io_ocr == 0) {
                        mmcp->io_ocr = io_ocr;
                        break;
                }
                CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
                          ("SDIO OCR: %08x\n", mmcp->io_ocr));

                if (ioifcond & R4_IO_MEM_PRESENT) {

                        PROBE_SET_ACTION(softc, 130);
                } else {

                        PROBE_SET_ACTION(softc, 128);
                }
                break;
        }
        case 136:
        {
  mmcio = &done_ccb->mmcio;
  err = mmcio->cmd.error;
                struct mmc_params *mmcp = &path->device->mmc_ident_data;

  if (err != MMC_ERR_NONE) {
   CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
      ("MMC_INIT: error %d, resp %08x\n",
       err, mmcio->cmd.resp[0]));
   PROBE_SET_ACTION(softc, PROBE_INVALID);
                        break;
                }
                CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
                          ("MMC card, OCR %08x\n", mmcio->cmd.resp[0]));

                if (mmcp->card_ocr == 0) {

                        mmcp->card_ocr = mmcio->cmd.resp[0];
                        CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
                                  ("-> sending OCR to card\n"));
                        break;
                }

                if (!(mmcio->cmd.resp[0] & MMC_OCR_CARD_BUSY)) {
                        CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
                                  ("Card is still powering up\n"));
                        break;
                }

                mmcp->card_features |= CARD_FEATURE_MMC | CARD_FEATURE_MEMORY;
                PROBE_SET_ACTION(softc, 139);
                break;
        }
 case 130:
 {
  mmcio = &done_ccb->mmcio;
  err = mmcio->cmd.error;

  if (err != MMC_ERR_NONE) {
   CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
      ("APP_OP_COND: error %d, resp %08x\n",
       err, mmcio->cmd.resp[0]));
   PROBE_SET_ACTION(softc, 136);
                        break;
                }

                if (!(softc->flags & PROBE_FLAG_ACMD_SENT)) {

                        softc->flags |= PROBE_FLAG_ACMD_SENT;
                        break;
                }

                softc->flags &= ~PROBE_FLAG_ACMD_SENT;
                if ((mmcio->cmd.resp[0] & MMC_OCR_CARD_BUSY) ||
                    (mmcio->cmd.arg & MMC_OCR_VOLTAGE) == 0) {
                        struct mmc_params *mmcp = &path->device->mmc_ident_data;
                        CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
                                  ("Card OCR: %08x\n", mmcio->cmd.resp[0]));
                        if (mmcp->card_ocr == 0) {
                                mmcp->card_ocr = mmcio->cmd.resp[0];

                                CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
                                          ("-> sending OCR to card\n"));
                        } else {



                                PROBE_SET_ACTION(softc, 139);
                        }

                        mmcp->card_features |= CARD_FEATURE_MEMORY;


                        if (mmcio->cmd.resp[0] & MMC_OCR_CCS) {
                                CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
                                          ("Card is SDHC\n"));
                                mmcp->card_features |= CARD_FEATURE_SDHC;
                        }


   if (mmcio->cmd.resp[0] & MMC_OCR_S18A) {
    CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
       ("Card supports 1.8V signaling\n"));
    mmcp->card_features |= CARD_FEATURE_18V;
   }
  } else {
   CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
      ("Card not ready: %08x\n", mmcio->cmd.resp[0]));

   PROBE_SET_ACTION(softc, 130);
  }

                break;
 }
        case 139:
        {
  mmcio = &done_ccb->mmcio;
  err = mmcio->cmd.error;

  if (err != MMC_ERR_NONE) {
   CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
      ("PROBE_GET_CID: error %d\n", err));
   PROBE_SET_ACTION(softc, PROBE_INVALID);
                        break;
                }

                struct mmc_params *mmcp = &path->device->mmc_ident_data;
                memcpy(mmcp->card_cid, mmcio->cmd.resp, 4 * sizeof(uint32_t));
                CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
                          ("CID %08x%08x%08x%08x\n",
                           mmcp->card_cid[0],
                           mmcp->card_cid[1],
                           mmcp->card_cid[2],
                           mmcp->card_cid[3]));
  if (mmcp->card_features & CARD_FEATURE_MMC)
   PROBE_SET_ACTION(softc, 135);
  else
   PROBE_SET_ACTION(softc, 128);
                break;
        }
        case 128: {
  mmcio = &done_ccb->mmcio;
  err = mmcio->cmd.error;
                struct mmc_params *mmcp = &path->device->mmc_ident_data;
                uint16_t rca = mmcio->cmd.resp[0] >> 16;
                CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
                          ("Card published RCA: %u\n", rca));
                path->device->mmc_ident_data.card_rca = rca;
  if (err != MMC_ERR_NONE) {
   CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
      ("PROBE_SEND_RELATIVE_ADDR: error %d\n", err));
   PROBE_SET_ACTION(softc, PROBE_INVALID);
                        break;
                }


                if (mmcp->card_features & CARD_FEATURE_MEMORY)
                        PROBE_SET_ACTION(softc, 138);
                else
                        PROBE_SET_ACTION(softc, 131);
  break;
        }
 case 135:
  mmcio = &done_ccb->mmcio;
  err = mmcio->cmd.error;
  if (err != MMC_ERR_NONE) {
   CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
       ("PROBE_MMC_SET_RELATIVE_ADDR: error %d\n", err));
   PROBE_SET_ACTION(softc, PROBE_INVALID);
   break;
  }
  path->device->mmc_ident_data.card_rca = MMC_PROPOSED_RCA;
  PROBE_SET_ACTION(softc, 138);
  break;
        case 138: {
  mmcio = &done_ccb->mmcio;
  err = mmcio->cmd.error;

  if (err != MMC_ERR_NONE) {
   CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
      ("PROBE_GET_CSD: error %d\n", err));
   PROBE_SET_ACTION(softc, PROBE_INVALID);
                        break;
                }

                struct mmc_params *mmcp = &path->device->mmc_ident_data;
                memcpy(mmcp->card_csd, mmcio->cmd.resp, 4 * sizeof(uint32_t));
                CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
                          ("CSD %08x%08x%08x%08x\n",
                           mmcp->card_csd[0],
                           mmcp->card_csd[1],
                           mmcp->card_csd[2],
                           mmcp->card_csd[3]));
                PROBE_SET_ACTION(softc, 131);
                break;
        }
        case 131: {
  mmcio = &done_ccb->mmcio;
  err = mmcio->cmd.error;
  if (err != MMC_ERR_NONE) {
   CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
      ("PROBE_SEND_RELATIVE_ADDR: error %d\n", err));
   PROBE_SET_ACTION(softc, PROBE_INVALID);
                        break;
                }

  PROBE_SET_ACTION(softc, PROBE_DONE);
                break;
        }
 default:
  CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
     ("mmc_probedone: invalid action state 0x%x\n", softc->action));
  panic("default: case in mmc_probe_done()");
 }

        if (softc->action == PROBE_INVALID &&
            (path->device->flags & CAM_DEV_UNCONFIGURED) == 0) {
                CAM_DEBUG(done_ccb->ccb_h.path, CAM_DEBUG_PROBE,
     ("mmc_probedone: Should send AC_LOST_DEVICE but won't for now\n"));

        }

 xpt_release_ccb(done_ccb);
        if (softc->action != PROBE_INVALID)
                xpt_schedule(periph, priority);

 int frozen = cam_release_devq(path, 0, 0, 0, FALSE);
        printf("mmc_probedone: remaining freezecnt %d\n", frozen);

 if (softc->action == PROBE_DONE) {

  if (periph->path->device->flags & CAM_DEV_UNCONFIGURED) {
   path->device->flags &= ~CAM_DEV_UNCONFIGURED;
   xpt_acquire_device(path->device);
   done_ccb->ccb_h.func_code = XPT_GDEV_TYPE;
   xpt_action(done_ccb);
   xpt_async(AC_FOUND_DEVICE, path, done_ccb);
  }
 }
        if (softc->action == PROBE_DONE || softc->action == PROBE_INVALID) {
                cam_periph_invalidate(periph);
                cam_periph_release_locked(periph);
        }
}
