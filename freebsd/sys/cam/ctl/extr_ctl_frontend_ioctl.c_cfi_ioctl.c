
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct thread {int dummy; } ;
struct ctl_req {int reqtype; int error_str; int status; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int CTL_LUN_ERROR ;
 scalar_t__ CTL_PORT_REQ ;


 int ENOTTY ;
 int cfi_ioctl_port_create (struct ctl_req*) ;
 int cfi_ioctl_port_remove (struct ctl_req*) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int
cfi_ioctl(struct cdev *dev, u_long cmd, caddr_t addr, int flag,
    struct thread *td)
{
 struct ctl_req *req;

 if (cmd == CTL_PORT_REQ) {
  req = (struct ctl_req *)addr;
  switch (req->reqtype) {
  case 129:
   cfi_ioctl_port_create(req);
   break;
  case 128:
   cfi_ioctl_port_remove(req);
   break;
  default:
   req->status = CTL_LUN_ERROR;
   snprintf(req->error_str, sizeof(req->error_str),
       "Unsupported request type %d", req->reqtype);
  }
  return (0);
 }

 return (ENOTTY);
}
