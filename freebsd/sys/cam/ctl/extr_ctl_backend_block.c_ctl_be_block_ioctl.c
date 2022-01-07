
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct ctl_lun_req {int reqtype; int error_str; int status; } ;
struct ctl_be_block_softc {int dummy; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;





 int CTL_LUN_ERROR ;

 int ENOTTY ;
 struct ctl_be_block_softc backend_block_softc ;
 int ctl_be_block_create (struct ctl_be_block_softc*,struct ctl_lun_req*) ;
 int ctl_be_block_modify (struct ctl_be_block_softc*,struct ctl_lun_req*) ;
 int ctl_be_block_rm (struct ctl_be_block_softc*,struct ctl_lun_req*) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int
ctl_be_block_ioctl(struct cdev *dev, u_long cmd, caddr_t addr,
   int flag, struct thread *td)
{
 struct ctl_be_block_softc *softc;
 int error;

 softc = &backend_block_softc;

 error = 0;

 switch (cmd) {
 case 128: {
  struct ctl_lun_req *lun_req;

  lun_req = (struct ctl_lun_req *)addr;

  switch (lun_req->reqtype) {
  case 131:
   error = ctl_be_block_create(softc, lun_req);
   break;
  case 129:
   error = ctl_be_block_rm(softc, lun_req);
   break;
  case 130:
   error = ctl_be_block_modify(softc, lun_req);
   break;
  default:
   lun_req->status = CTL_LUN_ERROR;
   snprintf(lun_req->error_str, sizeof(lun_req->error_str),
     "invalid LUN request type %d",
     lun_req->reqtype);
   break;
  }
  break;
 }
 default:
  error = ENOTTY;
  break;
 }

 return (error);
}
