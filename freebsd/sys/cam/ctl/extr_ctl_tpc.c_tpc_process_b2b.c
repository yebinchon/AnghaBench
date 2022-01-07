
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef size_t uint16_t ;
struct runl {int dummy; } ;
struct tpc_list {size_t curseg; int stage; int cursectors; int segsectors; int curbytes; int segbytes; scalar_t__ tbdio; struct runl allio; int ctsio; TYPE_3__* cscd; scalar_t__* seg; scalar_t__ error; scalar_t__ abort; } ;
struct tpc_io {size_t cscd; scalar_t__ lun; TYPE_4__* io; struct runl run; int target; struct tpc_io* buf; struct tpc_list* list; } ;
struct scsi_ec_segment_b2b {int flags; int dst_lba; int src_lba; int number_of_blocks; int dst_cscd; int src_cscd; } ;
struct scsi_ec_cscd_dtsp {int block_length; } ;
typedef int off_t ;
typedef int csi ;
struct TYPE_8__ {int retries; TYPE_1__* ctl_private; } ;
struct TYPE_10__ {TYPE_2__ io_hdr; } ;
struct TYPE_9__ {struct scsi_ec_cscd_dtsp dtsp; } ;
struct TYPE_7__ {struct tpc_io* ptr; } ;


 size_t CTL_PRIV_FRONTEND ;
 int CTL_RETVAL_COMPLETE ;
 int CTL_RETVAL_ERROR ;
 int CTL_RETVAL_QUEUED ;
 int CTL_TAG_SIMPLE ;
 int EC_SEG_DC ;
 int M_CTL ;
 int M_WAITOK ;
 int M_ZERO ;
 int SSD_ELEM_COMMAND ;
 int SSD_ELEM_NONE ;
 int SSD_FORWARDED_SDS_EXDST ;
 int SSD_FORWARDED_SDS_EXSRC ;
 int SSD_KEY_COPY_ABORTED ;
 struct tpc_io* TAILQ_FIRST (struct runl*) ;
 int TAILQ_INIT (struct runl*) ;
 int TAILQ_INSERT_TAIL (struct runl*,struct tpc_io*,int ) ;
 int TAILQ_REMOVE (struct runl*,struct tpc_io*,int ) ;
 int TPC_MAX_IO_SIZE ;
 scalar_t__ UINT64_MAX ;
 int ctl_free_io (TYPE_4__*) ;
 int ctl_scsi_read_write (TYPE_4__*,struct tpc_io*,int,int,int ,int ,int,int,int ,int ) ;
 int ctl_set_sense (int ,int,int ,int,int,int ,int,int *,int ) ;
 int ctl_set_task_aborted (int ) ;
 int free (struct tpc_io*,int ) ;
 int links ;
 void* malloc (int,int ,int) ;
 int panic (char*) ;
 int rlinks ;
 void* scsi_2btoul (int ) ;
 scalar_t__ scsi_3btoul (int ) ;
 int scsi_8btou64 (int ) ;
 int scsi_ulto4b (size_t,int *) ;
 scalar_t__ tpc_resolve (struct tpc_list*,size_t,int*,int*,int*) ;
 int tpc_set_io_error_sense (struct tpc_list*) ;
 void* tpcl_alloc_io () ;
 int tpcl_queue (TYPE_4__*,scalar_t__) ;

__attribute__((used)) static int
tpc_process_b2b(struct tpc_list *list)
{
 struct scsi_ec_segment_b2b *seg;
 struct scsi_ec_cscd_dtsp *sdstp, *ddstp;
 struct tpc_io *tior, *tiow;
 struct runl run;
 uint64_t sl, dl;
 off_t srclba, dstlba, numbytes, donebytes, roundbytes;
 int numlba;
 uint32_t srcblock, dstblock, pb, pbo, adj;
 uint16_t scscd, dcscd;
 uint8_t csi[4];

 scsi_ulto4b(list->curseg, csi);
 if (list->stage == 1) {
  while ((tior = TAILQ_FIRST(&list->allio)) != ((void*)0)) {
   TAILQ_REMOVE(&list->allio, tior, links);
   ctl_free_io(tior->io);
   free(tior->buf, M_CTL);
   free(tior, M_CTL);
  }
  if (list->abort) {
   ctl_set_task_aborted(list->ctsio);
   return (CTL_RETVAL_ERROR);
  } else if (list->error) {
   tpc_set_io_error_sense(list);
   return (CTL_RETVAL_ERROR);
  }
  list->cursectors += list->segsectors;
  list->curbytes += list->segbytes;
  return (CTL_RETVAL_COMPLETE);
 }

 TAILQ_INIT(&list->allio);
 seg = (struct scsi_ec_segment_b2b *)list->seg[list->curseg];
 scscd = scsi_2btoul(seg->src_cscd);
 dcscd = scsi_2btoul(seg->dst_cscd);
 sl = tpc_resolve(list, scscd, &srcblock, ((void*)0), ((void*)0));
 dl = tpc_resolve(list, dcscd, &dstblock, &pb, &pbo);
 if (sl == UINT64_MAX || dl == UINT64_MAX) {
  ctl_set_sense(list->ctsio, 1,
                    SSD_KEY_COPY_ABORTED,
              0x08, 0x04,
      SSD_ELEM_COMMAND, sizeof(csi), csi,
      SSD_ELEM_NONE);
  return (CTL_RETVAL_ERROR);
 }
 if (pbo > 0)
  pbo = pb - pbo;
 sdstp = &list->cscd[scscd].dtsp;
 if (scsi_3btoul(sdstp->block_length) != 0)
  srcblock = scsi_3btoul(sdstp->block_length);
 ddstp = &list->cscd[dcscd].dtsp;
 if (scsi_3btoul(ddstp->block_length) != 0)
  dstblock = scsi_3btoul(ddstp->block_length);
 numlba = scsi_2btoul(seg->number_of_blocks);
 if (seg->flags & EC_SEG_DC)
  numbytes = (off_t)numlba * dstblock;
 else
  numbytes = (off_t)numlba * srcblock;
 srclba = scsi_8btou64(seg->src_lba);
 dstlba = scsi_8btou64(seg->dst_lba);





 if (numbytes == 0)
  return (CTL_RETVAL_COMPLETE);

 if (numbytes % srcblock != 0 || numbytes % dstblock != 0) {
  ctl_set_sense(list->ctsio, 1,
                    SSD_KEY_COPY_ABORTED,
              0x26, 0x0A,
      SSD_ELEM_COMMAND, sizeof(csi), csi,
      SSD_ELEM_NONE);
  return (CTL_RETVAL_ERROR);
 }

 list->segbytes = numbytes;
 list->segsectors = numbytes / dstblock;
 donebytes = 0;
 TAILQ_INIT(&run);
 list->tbdio = 0;
 while (donebytes < numbytes) {
  roundbytes = numbytes - donebytes;
  if (roundbytes > TPC_MAX_IO_SIZE) {
   roundbytes = TPC_MAX_IO_SIZE;
   roundbytes -= roundbytes % dstblock;
   if (pb > dstblock) {
    adj = (dstlba * dstblock + roundbytes - pbo) % pb;
    if (roundbytes > adj)
     roundbytes -= adj;
   }
  }

  tior = malloc(sizeof(*tior), M_CTL, M_WAITOK | M_ZERO);
  TAILQ_INIT(&tior->run);
  tior->buf = malloc(roundbytes, M_CTL, M_WAITOK);
  tior->list = list;
  TAILQ_INSERT_TAIL(&list->allio, tior, links);
  tior->io = tpcl_alloc_io();
  ctl_scsi_read_write(tior->io,
                     tior->buf,
                     roundbytes,
                    1,
                  0,
                             0,
                srclba,
                       roundbytes / srcblock,
                     CTL_TAG_SIMPLE,
                    0);
  tior->io->io_hdr.retries = 3;
  tior->target = SSD_FORWARDED_SDS_EXSRC;
  tior->cscd = scscd;
  tior->lun = sl;
  tior->io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr = tior;

  tiow = malloc(sizeof(*tior), M_CTL, M_WAITOK | M_ZERO);
  TAILQ_INIT(&tiow->run);
  tiow->list = list;
  TAILQ_INSERT_TAIL(&list->allio, tiow, links);
  tiow->io = tpcl_alloc_io();
  ctl_scsi_read_write(tiow->io,
                     tior->buf,
                     roundbytes,
                    0,
                  0,
                             0,
                dstlba,
                       roundbytes / dstblock,
                     CTL_TAG_SIMPLE,
                    0);
  tiow->io->io_hdr.retries = 3;
  tiow->target = SSD_FORWARDED_SDS_EXDST;
  tiow->cscd = dcscd;
  tiow->lun = dl;
  tiow->io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr = tiow;

  TAILQ_INSERT_TAIL(&tior->run, tiow, rlinks);
  TAILQ_INSERT_TAIL(&run, tior, rlinks);
  list->tbdio++;
  donebytes += roundbytes;
  srclba += roundbytes / srcblock;
  dstlba += roundbytes / dstblock;
 }

 while ((tior = TAILQ_FIRST(&run)) != ((void*)0)) {
  TAILQ_REMOVE(&run, tior, rlinks);
  if (tpcl_queue(tior->io, tior->lun) != CTL_RETVAL_COMPLETE)
   panic("tpcl_queue() error");
 }

 list->stage++;
 return (CTL_RETVAL_QUEUED);
}
