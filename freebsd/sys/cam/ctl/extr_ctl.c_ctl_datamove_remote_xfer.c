
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kern_data_len; } ;
struct TYPE_3__ {int status; int flags; } ;
union ctl_io {TYPE_2__ scsiio; TYPE_1__ io_hdr; } ;
typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct ctl_sg_entry {scalar_t__ len; scalar_t__ addr; } ;
struct ctl_ha_dt_req {unsigned int command; int ret; int (* callback ) (struct ctl_ha_dt_req*) ;int * remote; int * local; scalar_t__ size; union ctl_io* context; } ;
typedef int (* ctl_ha_dt_cb ) (struct ctl_ha_dt_req*) ;


 int CTL_FLAG_BUS_ADDR ;
 int CTL_HA_STATUS_SUCCESS ;
 int CTL_HA_STATUS_WAIT ;
 struct ctl_sg_entry* CTL_LSGL (union ctl_io*) ;
 struct ctl_sg_entry* CTL_RSGL (union ctl_io*) ;
 int CTL_STATUS_MASK ;
 int CTL_STATUS_NONE ;
 int CTL_SUCCESS ;
 int KASSERT (int,char*) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 struct ctl_ha_dt_req* ctl_dt_req_alloc () ;
 int ctl_dt_req_free (struct ctl_ha_dt_req*) ;
 int ctl_dt_single (struct ctl_ha_dt_req*) ;
 int ctl_send_datamove_done (union ctl_io*,int ) ;
 int ctl_set_busy (TYPE_2__*) ;
 int * vtophys (int *) ;

__attribute__((used)) static int
ctl_datamove_remote_xfer(union ctl_io *io, unsigned command,
    ctl_ha_dt_cb callback)
{
 struct ctl_ha_dt_req *rq;
 struct ctl_sg_entry *remote_sglist, *local_sglist;
 uint32_t local_used, remote_used, total_used;
 int i, j, isc_ret;

 rq = ctl_dt_req_alloc();






 if ((rq == ((void*)0))
  && ((io->io_hdr.status & CTL_STATUS_MASK) != CTL_STATUS_NONE &&
      (io->io_hdr.status & CTL_STATUS_MASK) != CTL_SUCCESS))
  ctl_set_busy(&io->scsiio);

 if ((io->io_hdr.status & CTL_STATUS_MASK) != CTL_STATUS_NONE &&
     (io->io_hdr.status & CTL_STATUS_MASK) != CTL_SUCCESS) {

  if (rq != ((void*)0))
   ctl_dt_req_free(rq);







  ctl_send_datamove_done(io, 0);

  return (1);
 }

 local_sglist = CTL_LSGL(io);
 remote_sglist = CTL_RSGL(io);
 local_used = 0;
 remote_used = 0;
 total_used = 0;
 isc_ret = CTL_HA_STATUS_SUCCESS;
 for (i = 0, j = 0; total_used < io->scsiio.kern_data_len; ) {
  uint32_t cur_len;
  uint8_t *tmp_ptr;

  rq->command = command;
  rq->context = io;







  cur_len = MIN(local_sglist[i].len - local_used,
         remote_sglist[j].len - remote_used);
  rq->size = cur_len;

  tmp_ptr = (uint8_t *)local_sglist[i].addr;
  tmp_ptr += local_used;
  KASSERT((io->io_hdr.flags & CTL_FLAG_BUS_ADDR) == 0,
      ("HA does not support BUS_ADDR"));
  rq->local = tmp_ptr;


  tmp_ptr = (uint8_t *)remote_sglist[j].addr;
  tmp_ptr += remote_used;
  rq->remote = tmp_ptr;

  rq->callback = ((void*)0);

  local_used += cur_len;
  if (local_used >= local_sglist[i].len) {
   i++;
   local_used = 0;
  }

  remote_used += cur_len;
  if (remote_used >= remote_sglist[j].len) {
   j++;
   remote_used = 0;
  }
  total_used += cur_len;

  if (total_used >= io->scsiio.kern_data_len)
   rq->callback = callback;

  isc_ret = ctl_dt_single(rq);
  if (isc_ret > CTL_HA_STATUS_SUCCESS)
   break;
 }
 if (isc_ret != CTL_HA_STATUS_WAIT) {
  rq->ret = isc_ret;
  callback(rq);
 }

 return (0);
}
