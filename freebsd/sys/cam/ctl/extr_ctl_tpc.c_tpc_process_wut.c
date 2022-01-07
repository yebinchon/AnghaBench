
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
struct runl {int dummy; } ;
struct tpc_list {scalar_t__ stage; int cursectors; int segsectors; int curbytes; int segbytes; int offset_into_rod; scalar_t__ tbdio; TYPE_6__* lun; struct runl allio; TYPE_1__* token; TYPE_9__* ctsio; TYPE_8__* range; int nrange; int fwd_sense_len; int fwd_sense_data; scalar_t__ fwd_scsi_status; scalar_t__ error; scalar_t__ abort; } ;
struct tpc_io {int lun; TYPE_7__* io; struct runl run; struct tpc_io* buf; struct tpc_list* list; } ;
typedef int off_t ;
struct TYPE_16__ {int status; } ;
struct TYPE_21__ {int sense_len; int sense_data; scalar_t__ scsi_status; TYPE_4__ io_hdr; } ;
struct TYPE_20__ {int length; int lba; } ;
struct TYPE_15__ {int retries; TYPE_2__* ctl_private; } ;
struct TYPE_19__ {TYPE_3__ io_hdr; } ;
struct TYPE_18__ {int lun; TYPE_5__* be_lun; } ;
struct TYPE_17__ {int blocksize; int pblockexp; int pblockoff; } ;
struct TYPE_14__ {struct tpc_io* ptr; } ;
struct TYPE_13__ {int blocksize; int lun; TYPE_8__* range; int nrange; } ;


 int CTL_AUTOSENSE ;
 size_t CTL_PRIV_FRONTEND ;
 int CTL_RETVAL_COMPLETE ;
 int CTL_RETVAL_ERROR ;
 int CTL_RETVAL_QUEUED ;
 int CTL_SCSI_ERROR ;
 int CTL_TAG_SIMPLE ;
 int M_CTL ;
 int M_WAITOK ;
 int M_ZERO ;
 struct tpc_io* TAILQ_FIRST (struct runl*) ;
 int TAILQ_INIT (struct runl*) ;
 int TAILQ_INSERT_TAIL (struct runl*,struct tpc_io*,int ) ;
 int TAILQ_REMOVE (struct runl*,struct tpc_io*,int ) ;
 int TPC_MAX_IOCHUNK_SIZE ;
 int TPC_MAX_IO_SIZE ;
 int ctl_free_io (TYPE_7__*) ;
 int ctl_scsi_read_write (TYPE_7__*,struct tpc_io*,int,int,int ,int ,int,int,int ,int ) ;
 int ctl_set_invalid_field (TYPE_9__*,int ,int ,int ,int ,int ) ;
 int ctl_set_task_aborted (TYPE_9__*) ;
 int free (struct tpc_io*,int ) ;
 int links ;
 void* malloc (int,int ,int) ;
 int omin (int,int) ;
 int panic (char*) ;
 int rlinks ;
 int scsi_4btoul (int ) ;
 int scsi_8btou64 (int ) ;
 scalar_t__ tpc_skip_ranges (TYPE_8__*,int ,int,int*,int*) ;
 void* tpcl_alloc_io () ;
 int tpcl_queue (TYPE_7__*,int ) ;

__attribute__((used)) static int
tpc_process_wut(struct tpc_list *list)
{
 struct tpc_io *tio, *tior, *tiow;
 struct runl run;
 int drange, srange;
 off_t doffset, soffset;
 off_t srclba, dstlba, numbytes, donebytes, roundbytes;
 uint32_t srcblock, dstblock, pb, pbo, adj;

 if (list->stage > 0) {

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
   if (list->fwd_scsi_status) {
    list->ctsio->io_hdr.status =
        CTL_SCSI_ERROR | CTL_AUTOSENSE;
    list->ctsio->scsi_status = list->fwd_scsi_status;
    list->ctsio->sense_data = list->fwd_sense_data;
    list->ctsio->sense_len = list->fwd_sense_len;
   } else {
    ctl_set_invalid_field(list->ctsio,
                      0, 0,
                  0, 0, 0);
   }
   return (CTL_RETVAL_ERROR);
  }
  list->cursectors += list->segsectors;
  list->curbytes += list->segbytes;
 }


 if (tpc_skip_ranges(list->range, list->nrange, list->cursectors,
     &drange, &doffset) != 0)
  return (CTL_RETVAL_COMPLETE);
 dstblock = list->lun->be_lun->blocksize;
 pb = dstblock << list->lun->be_lun->pblockexp;
 if (list->lun->be_lun->pblockoff > 0)
  pbo = pb - dstblock * list->lun->be_lun->pblockoff;
 else
  pbo = 0;


 srcblock = list->token->blocksize;
 if (tpc_skip_ranges(list->token->range, list->token->nrange,
     list->offset_into_rod + list->cursectors * dstblock / srcblock,
     &srange, &soffset) != 0) {
  ctl_set_invalid_field(list->ctsio, 0,
                  0, 0, 0, 0);
  return (CTL_RETVAL_ERROR);
 }

 srclba = scsi_8btou64(list->token->range[srange].lba) + soffset;
 dstlba = scsi_8btou64(list->range[drange].lba) + doffset;
 numbytes = srcblock *
     (scsi_4btoul(list->token->range[srange].length) - soffset);
 numbytes = omin(numbytes, dstblock *
     (scsi_4btoul(list->range[drange].length) - doffset));
 if (numbytes > TPC_MAX_IOCHUNK_SIZE) {
  numbytes = TPC_MAX_IOCHUNK_SIZE;
  numbytes -= numbytes % dstblock;
  if (pb > dstblock) {
   adj = (dstlba * dstblock + numbytes - pbo) % pb;
   if (numbytes > adj)
    numbytes -= adj;
  }
 }

 if (numbytes % srcblock != 0 || numbytes % dstblock != 0) {
  ctl_set_invalid_field(list->ctsio, 0,
                  0, 0, 0, 0);
  return (CTL_RETVAL_ERROR);
 }

 list->segbytes = numbytes;
 list->segsectors = numbytes / dstblock;


 donebytes = 0;
 TAILQ_INIT(&run);
 list->tbdio = 0;
 TAILQ_INIT(&list->allio);
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
  tior->lun = list->token->lun;
  tior->io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr = tior;

  tiow = malloc(sizeof(*tiow), M_CTL, M_WAITOK | M_ZERO);
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
  tiow->lun = list->lun->lun;
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
