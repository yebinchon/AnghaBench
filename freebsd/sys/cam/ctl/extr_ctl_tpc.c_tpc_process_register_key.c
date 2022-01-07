
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint16_t ;
struct tpc_list {size_t curseg; int stage; int tbdio; int allio; int ctsio; scalar_t__* seg; scalar_t__ error; scalar_t__ abort; } ;
struct tpc_io {scalar_t__ lun; TYPE_3__* io; int cscd; int target; struct tpc_io* buf; struct tpc_list* list; int run; } ;
struct scsi_per_res_out_parms {int dummy; } ;
struct scsi_ec_segment_register_key {int sa_res_key; int res_key; int dst_cscd; } ;
typedef int csi ;
struct TYPE_8__ {int retries; TYPE_1__* ctl_private; } ;
struct TYPE_9__ {TYPE_2__ io_hdr; } ;
struct TYPE_7__ {struct tpc_io* ptr; } ;


 size_t CTL_PRIV_FRONTEND ;
 int CTL_RETVAL_COMPLETE ;
 int CTL_RETVAL_ERROR ;
 int CTL_RETVAL_QUEUED ;
 int CTL_TAG_SIMPLE ;
 int M_CTL ;
 int M_WAITOK ;
 int M_ZERO ;
 int SPRO_REGISTER ;
 int SSD_ELEM_COMMAND ;
 int SSD_ELEM_NONE ;
 int SSD_FORWARDED_SDS_EXDST ;
 int SSD_KEY_COPY_ABORTED ;
 struct tpc_io* TAILQ_FIRST (int *) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct tpc_io*,int ) ;
 int TAILQ_REMOVE (int *,struct tpc_io*,int ) ;
 scalar_t__ UINT64_MAX ;
 int ctl_free_io (TYPE_3__*) ;
 int ctl_scsi_persistent_res_out (TYPE_3__*,struct tpc_io*,int,int ,int,int ,int ,int ,int ) ;
 int ctl_set_sense (int ,int,int ,int,int,int ,int,int *,int ) ;
 int ctl_set_task_aborted (int ) ;
 int free (struct tpc_io*,int ) ;
 int links ;
 void* malloc (int,int ,int) ;
 int panic (char*) ;
 int scsi_2btoul (int ) ;
 int scsi_8btou64 (int ) ;
 int scsi_ulto4b (size_t,int *) ;
 scalar_t__ tpc_resolve (struct tpc_list*,int ,int *,int *,int *) ;
 int tpc_set_io_error_sense (struct tpc_list*) ;
 TYPE_3__* tpcl_alloc_io () ;
 int tpcl_queue (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static int
tpc_process_register_key(struct tpc_list *list)
{
 struct scsi_ec_segment_register_key *seg;
 struct tpc_io *tio;
 uint64_t dl;
 int datalen;
 uint16_t cscd;
 uint8_t csi[4];

 scsi_ulto4b(list->curseg, csi);
 if (list->stage == 1) {
  while ((tio = TAILQ_FIRST(&list->allio)) != ((void*)0)) {
   TAILQ_REMOVE(&list->allio, tio, links);
   ctl_free_io(tio->io);
   free(tio->buf, M_CTL);
   free(tio, M_CTL);
  }
  if (list->abort) {
   ctl_set_task_aborted(list->ctsio);
   return (CTL_RETVAL_ERROR);
  } else if (list->error) {
   tpc_set_io_error_sense(list);
   return (CTL_RETVAL_ERROR);
  } else
   return (CTL_RETVAL_COMPLETE);
 }

 TAILQ_INIT(&list->allio);
 seg = (struct scsi_ec_segment_register_key *)list->seg[list->curseg];
 cscd = scsi_2btoul(seg->dst_cscd);
 dl = tpc_resolve(list, cscd, ((void*)0), ((void*)0), ((void*)0));
 if (dl == UINT64_MAX) {
  ctl_set_sense(list->ctsio, 1,
                    SSD_KEY_COPY_ABORTED,
              0x08, 0x04,
      SSD_ELEM_COMMAND, sizeof(csi), csi,
      SSD_ELEM_NONE);
  return (CTL_RETVAL_ERROR);
 }



 list->tbdio = 1;
 tio = malloc(sizeof(*tio), M_CTL, M_WAITOK | M_ZERO);
 TAILQ_INIT(&tio->run);
 tio->list = list;
 TAILQ_INSERT_TAIL(&list->allio, tio, links);
 tio->io = tpcl_alloc_io();
 datalen = sizeof(struct scsi_per_res_out_parms);
 tio->buf = malloc(datalen, M_CTL, M_WAITOK);
 ctl_scsi_persistent_res_out(tio->io,
     tio->buf, datalen, SPRO_REGISTER, -1,
     scsi_8btou64(seg->res_key), scsi_8btou64(seg->sa_res_key),
                  CTL_TAG_SIMPLE, 0);
 tio->io->io_hdr.retries = 3;
 tio->target = SSD_FORWARDED_SDS_EXDST;
 tio->cscd = cscd;
 tio->lun = dl;
 tio->io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr = tio;
 list->stage++;
 if (tpcl_queue(tio->io, tio->lun) != CTL_RETVAL_COMPLETE)
  panic("tpcl_queue() error");
 return (CTL_RETVAL_QUEUED);
}
