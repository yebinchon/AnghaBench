
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pass_softc {int dummy; } ;
struct pass_io_req {int data_flags; int num_bufs; int * dirs; int * user_bufs; int * kern_bufs; int * lengths; } ;
struct cam_periph {int path; scalar_t__ softc; } ;







 int CAM_DIR_IN ;
 int EINVAL ;
 int copyout (int ,int ,int ) ;
 int passcopysglist (struct cam_periph*,struct pass_io_req*,int ) ;
 int passiocleanup (struct pass_softc*,struct pass_io_req*) ;
 int xpt_print (int ,char*,int ,int ,int ) ;

__attribute__((used)) static int
passmemdone(struct cam_periph *periph, struct pass_io_req *io_req)
{
 struct pass_softc *softc;
 int error;
 int i;

 error = 0;
 softc = (struct pass_softc *)periph->softc;

 switch (io_req->data_flags) {
 case 128:



  for (i = 0; i < io_req->num_bufs; i++) {
   if (io_req->dirs[i] != CAM_DIR_IN)
    continue;

   error = copyout(io_req->kern_bufs[i],
       io_req->user_bufs[i], io_req->lengths[i]);
   if (error != 0) {
    xpt_print(periph->path, "Unable to copy %u "
       "bytes from %p to user address %p\n",
       io_req->lengths[i],
       io_req->kern_bufs[i],
       io_req->user_bufs[i]);
    goto bailout;
   }

  }
  break;
 case 131:

  break;
 case 130:




  if (io_req->dirs[0] == CAM_DIR_IN)
   error = passcopysglist(periph, io_req, io_req->dirs[0]);
  break;
 case 129:




  break;
 default:
 case 132:
  error = EINVAL;
  break;
 }

bailout:




 passiocleanup(softc, io_req);

 return (error);
}
