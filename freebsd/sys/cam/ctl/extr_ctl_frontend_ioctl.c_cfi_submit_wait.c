
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int (* be_move_done ) (union ctl_io*) ;} ;
struct TYPE_5__ {TYPE_1__* ctl_private; } ;
union ctl_io {TYPE_3__ scsiio; TYPE_2__ io_hdr; } ;
struct ctl_fe_ioctl_params {int state; int sem; int ioctl_mtx; } ;
typedef int params ;
typedef int ctl_fe_ioctl_state ;
struct TYPE_4__ {struct ctl_fe_ioctl_params* ptr; } ;


 int CTL_DEBUG_PRINT (char*) ;



 size_t CTL_PRIV_FRONTEND ;
 int CTL_RETVAL_COMPLETE ;
 int MTX_DEF ;
 int bzero (struct ctl_fe_ioctl_params*,int) ;
 int ctl_ioctl_do_datamove (TYPE_3__*) ;
 int ctl_queue (union ctl_io*) ;
 int cv_destroy (int *) ;
 int cv_init (int *,char*) ;
 int cv_wait (int *,int *) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (union ctl_io*) ;

__attribute__((used)) static int
cfi_submit_wait(union ctl_io *io)
{
 struct ctl_fe_ioctl_params params;
 ctl_fe_ioctl_state last_state;
 int done, retval;

 bzero(&params, sizeof(params));
 mtx_init(&params.ioctl_mtx, "ctliocmtx", ((void*)0), MTX_DEF);
 cv_init(&params.sem, "ctlioccv");
 params.state = 128;
 last_state = params.state;

 io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr = &params;

 CTL_DEBUG_PRINT(("cfi_submit_wait\n"));


 if ((retval = ctl_queue(io)) != CTL_RETVAL_COMPLETE)
  return (retval);

 done = 0;

 do {
  mtx_lock(&params.ioctl_mtx);





  if (params.state == last_state) {

   cv_wait(&params.sem, &params.ioctl_mtx);
  }
  last_state = params.state;

  switch (params.state) {
  case 128:


   mtx_unlock(&params.ioctl_mtx);
   break;
  case 130:
   CTL_DEBUG_PRINT(("got CTL_IOCTL_DATAMOVE\n"));





   params.state = last_state = 128;

   mtx_unlock(&params.ioctl_mtx);
   ctl_ioctl_do_datamove(&io->scsiio);







   io->scsiio.be_move_done(io);
   break;
  case 129:
   mtx_unlock(&params.ioctl_mtx);
   CTL_DEBUG_PRINT(("got CTL_IOCTL_DONE\n"));
   done = 1;
   break;
  default:
   mtx_unlock(&params.ioctl_mtx);

   break;
  }
 } while (done == 0);

 mtx_destroy(&params.ioctl_mtx);
 cv_destroy(&params.sem);

 return (CTL_RETVAL_COMPLETE);
}
