
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct changer_set_voltag_request {int dummy; } ;
struct changer_position {int dummy; } ;
struct changer_params {int cp_ndrives; int cp_nportals; int cp_nslots; int cp_npickers; } ;
struct changer_move {int dummy; } ;
struct changer_exchange {int dummy; } ;
struct changer_element_status_request {int dummy; } ;
struct ch_softc {int sc_picker; int* sc_firsts; int * sc_counts; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct cam_periph {int path; scalar_t__ softc; } ;
typedef scalar_t__ caddr_t ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 size_t CHET_DT ;
 size_t CHET_IE ;
 size_t CHET_MT ;
 size_t CHET_ST ;
 int EBADF ;
 int EINVAL ;
 int ENXIO ;
 int FWRITE ;

 int SCSI_REV_0 ;
 int SCSI_REV_2 ;
 int cam_periph_ioctl (struct cam_periph*,int,scalar_t__,int ) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int cherror ;
 int chexchange (struct cam_periph*,struct changer_exchange*) ;
 int chgetelemstatus (struct cam_periph*,int,int,struct changer_element_status_request*) ;
 int chielem (struct cam_periph*,unsigned int) ;
 int chmove (struct cam_periph*,struct changer_move*) ;
 int chposition (struct cam_periph*,struct changer_position*) ;
 int chscsiversion (struct cam_periph*) ;
 int chsetvoltag (struct cam_periph*,struct changer_set_voltag_request*) ;

__attribute__((used)) static int
chioctl(struct cdev *dev, u_long cmd, caddr_t addr, int flag, struct thread *td)
{
 struct cam_periph *periph;
 struct ch_softc *softc;
 int error;

 periph = (struct cam_periph *)dev->si_drv1;
 cam_periph_lock(periph);
 CAM_DEBUG(periph->path, CAM_DEBUG_TRACE, ("entering chioctl\n"));

 softc = (struct ch_softc *)periph->softc;

 error = 0;

 CAM_DEBUG(periph->path, CAM_DEBUG_TRACE,
    ("trying to do ioctl %#lx\n", cmd));





 switch (cmd) {
 case 135:
 case 136:
 case 128:
 case 134:
  break;

 default:
  if ((flag & FWRITE) == 0) {
   cam_periph_unlock(periph);
   return (EBADF);
  }
 }

 switch (cmd) {
 case 132:
  error = chmove(periph, (struct changer_move *)addr);
  break;

 case 137:
  error = chexchange(periph, (struct changer_exchange *)addr);
  break;

 case 131:
  error = chposition(periph, (struct changer_position *)addr);
  break;

 case 135:
  *(int *)addr = softc->sc_picker - softc->sc_firsts[CHET_MT];
  break;

 case 129:
 {
  int new_picker = *(int *)addr;

  if (new_picker > (softc->sc_counts[CHET_MT] - 1)) {
   error = EINVAL;
   break;
  }
  softc->sc_picker = softc->sc_firsts[CHET_MT] + new_picker;
  break;
 }
 case 136:
 {
  struct changer_params *cp = (struct changer_params *)addr;

  cp->cp_npickers = softc->sc_counts[CHET_MT];
  cp->cp_nslots = softc->sc_counts[CHET_ST];
  cp->cp_nportals = softc->sc_counts[CHET_IE];
  cp->cp_ndrives = softc->sc_counts[CHET_DT];
  break;
 }
 case 133:
  error = chielem(periph, *(unsigned int *)addr);
  break;

 case 128:
 {
  error = chgetelemstatus(periph, SCSI_REV_2, cmd,
      (struct changer_element_status_request *)addr);
  break;
 }

 case 134:
 {
  int scsi_version;

  scsi_version = chscsiversion(periph);
  if (scsi_version >= SCSI_REV_0) {
   error = chgetelemstatus(periph, scsi_version, cmd,
       (struct changer_element_status_request *)addr);
    }
  else {
   cam_periph_unlock(periph);
   return (ENXIO);
  }
  break;
 }

 case 130:
 {
  error = chsetvoltag(periph,
        (struct changer_set_voltag_request *) addr);
  break;
 }



 default:
  error = cam_periph_ioctl(periph, cmd, addr, cherror);
  break;
 }

 cam_periph_unlock(periph);
 return (error);
}
