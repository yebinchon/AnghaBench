
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_softc {int io_timeout; int device_stats; int dev; int bio_queue; int state; int pending_ccbs; } ;
struct make_dev_args {int mda_mode; struct cam_periph* mda_si_drv1; int mda_gid; int mda_uid; int mda_unit; int * mda_devsw; } ;
struct ccb_pathinq {int transport; } ;
struct ccb_getdev {int inq_data; } ;
struct cam_periph {int path; int unit_number; int periph_name; struct pt_softc* softc; } ;
typedef int cam_status ;


 int AC_BUS_RESET ;
 int AC_LOST_DEVICE ;
 int AC_SENT_BDR ;
 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int DEVSTAT_NO_BLOCKSIZE ;
 int DEVSTAT_PRIORITY_OTHER ;
 int GID_OPERATOR ;
 int LIST_INIT (int *) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int PT_STATE_NORMAL ;
 int SCSI_PT_DEFAULT_TIMEOUT ;
 int SID_TYPE (int *) ;
 int UID_ROOT ;
 int XPORT_DEVSTAT_TYPE (int ) ;
 int bioq_init (int *) ;
 int bzero (struct pt_softc*,int) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int devstat_new_entry (char*,int ,int ,int ,int,int ) ;
 int make_dev_args_init (struct make_dev_args*) ;
 int make_dev_s (struct make_dev_args*,int *,char*,int ,int ) ;
 scalar_t__ malloc (int,int ,int ) ;
 int printf (char*) ;
 int pt_cdevsw ;
 int ptasync ;
 int xpt_announce_periph (struct cam_periph*,int *) ;
 int xpt_path_inq (struct ccb_pathinq*,int ) ;
 int xpt_register_async (int,int ,struct cam_periph*,int ) ;

__attribute__((used)) static cam_status
ptctor(struct cam_periph *periph, void *arg)
{
 struct pt_softc *softc;
 struct ccb_getdev *cgd;
 struct ccb_pathinq cpi;
 struct make_dev_args args;
 int error;

 cgd = (struct ccb_getdev *)arg;
 if (cgd == ((void*)0)) {
  printf("ptregister: no getdev CCB, can't register device\n");
  return(CAM_REQ_CMP_ERR);
 }

 softc = (struct pt_softc *)malloc(sizeof(*softc),M_DEVBUF,M_NOWAIT);

 if (softc == ((void*)0)) {
  printf("daregister: Unable to probe new device. "
         "Unable to allocate softc\n");
  return(CAM_REQ_CMP_ERR);
 }

 bzero(softc, sizeof(*softc));
 LIST_INIT(&softc->pending_ccbs);
 softc->state = PT_STATE_NORMAL;
 bioq_init(&softc->bio_queue);

 softc->io_timeout = SCSI_PT_DEFAULT_TIMEOUT * 1000;

 periph->softc = softc;

 xpt_path_inq(&cpi, periph->path);

 cam_periph_unlock(periph);

 make_dev_args_init(&args);
 args.mda_devsw = &pt_cdevsw;
 args.mda_unit = periph->unit_number;
 args.mda_uid = UID_ROOT;
 args.mda_gid = GID_OPERATOR;
 args.mda_mode = 0600;
 args.mda_si_drv1 = periph;
 error = make_dev_s(&args, &softc->dev, "%s%d", periph->periph_name,
     periph->unit_number);
 if (error != 0) {
  cam_periph_lock(periph);
  return (CAM_REQ_CMP_ERR);
 }

 softc->device_stats = devstat_new_entry("pt",
     periph->unit_number, 0,
     DEVSTAT_NO_BLOCKSIZE,
     SID_TYPE(&cgd->inq_data) |
     XPORT_DEVSTAT_TYPE(cpi.transport),
     DEVSTAT_PRIORITY_OTHER);

 cam_periph_lock(periph);
 xpt_register_async(AC_SENT_BDR | AC_BUS_RESET | AC_LOST_DEVICE,
      ptasync, periph, periph->path);


 xpt_announce_periph(periph, ((void*)0));

 return(CAM_REQ_CMP);
}
