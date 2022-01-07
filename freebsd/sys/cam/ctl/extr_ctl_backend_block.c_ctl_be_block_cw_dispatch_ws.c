
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int kern_data_ptr; } ;
union ctl_io {TYPE_2__ scsiio; } ;
typedef int uintmax_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct ctl_lba_len_flags {int flags; int lba; scalar_t__ len; } ;
struct ctl_be_lun {int blocksize; int pblockexp; int pblockoff; } ;
struct ctl_be_block_lun {int (* dispatch ) (struct ctl_be_block_lun*,struct ctl_be_block_io*) ;int lun_zone; struct ctl_be_lun cbe_lun; int (* unmap ) (struct ctl_be_block_lun*,struct ctl_be_block_io*) ;} ;
struct ctl_be_block_io {int io_offset; int io_len; int beio_cont; TYPE_1__* sg_segs; int num_segs; int ds_trans_type; int bio_cmd; int io; } ;
struct TYPE_6__ {scalar_t__ ptr; } ;
struct TYPE_4__ {int len; int * addr; } ;


 struct ctl_lba_len_flags* ARGS (int ) ;
 int BIO_DELETE ;
 int BIO_WRITE ;
 int CTLBLK_MAX_SEG ;
 int CTLBLK_MAX_SEGS ;
 int DEVSTAT_FREE ;
 int DEVSTAT_WRITE ;
 int DPRINTF (char*,...) ;
 int MIN (int ,int) ;
 int M_WAITOK ;
 TYPE_3__* PRIV (union ctl_io*) ;
 int SWS_ANCHOR ;
 int SWS_LBDATA ;
 int SWS_NDOB ;
 int SWS_UNMAP ;
 int ctl_be_block_cw_done_ws ;
 int ctl_config_write_done (union ctl_io*) ;
 int ctl_free_beio (struct ctl_be_block_io*) ;
 int ctl_set_invalid_field (TYPE_2__*,int,int,int,int ,int ) ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int ,int) ;
 int scsi_ulto4b (int,int *) ;
 int stub1 (struct ctl_be_block_lun*,struct ctl_be_block_io*) ;
 int stub2 (struct ctl_be_block_lun*,struct ctl_be_block_io*) ;
 int * uma_zalloc (int ,int ) ;

__attribute__((used)) static void
ctl_be_block_cw_dispatch_ws(struct ctl_be_block_lun *be_lun,
       union ctl_io *io)
{
 struct ctl_be_lun *cbe_lun = &be_lun->cbe_lun;
 struct ctl_be_block_io *beio;
 struct ctl_lba_len_flags *lbalen;
 uint64_t len_left, lba;
 uint32_t pb, pbo, adj;
 int i, seglen;
 uint8_t *buf, *end;

 DPRINTF("entered\n");

 beio = (struct ctl_be_block_io *)PRIV(io)->ptr;
 lbalen = ARGS(beio->io);

 if (lbalen->flags & ~(SWS_LBDATA | SWS_UNMAP | SWS_ANCHOR | SWS_NDOB) ||
     (lbalen->flags & (SWS_UNMAP | SWS_ANCHOR) && be_lun->unmap == ((void*)0))) {
  ctl_free_beio(beio);
  ctl_set_invalid_field(&io->scsiio,
                        1,
                      1,
                    1,
                        0,
                  0);
  ctl_config_write_done(io);
  return;
 }

 if (lbalen->flags & (SWS_UNMAP | SWS_ANCHOR)) {
  beio->io_offset = lbalen->lba * cbe_lun->blocksize;
  beio->io_len = (uint64_t)lbalen->len * cbe_lun->blocksize;
  beio->bio_cmd = BIO_DELETE;
  beio->ds_trans_type = DEVSTAT_FREE;

  be_lun->unmap(be_lun, beio);
  return;
 }

 beio->bio_cmd = BIO_WRITE;
 beio->ds_trans_type = DEVSTAT_WRITE;

 DPRINTF("WRITE SAME at LBA %jx len %u\n",
        (uintmax_t)lbalen->lba, lbalen->len);

 pb = cbe_lun->blocksize << be_lun->cbe_lun.pblockexp;
 if (be_lun->cbe_lun.pblockoff > 0)
  pbo = pb - cbe_lun->blocksize * be_lun->cbe_lun.pblockoff;
 else
  pbo = 0;
 len_left = (uint64_t)lbalen->len * cbe_lun->blocksize;
 for (i = 0, lba = 0; i < CTLBLK_MAX_SEGS && len_left > 0; i++) {




  seglen = MIN(CTLBLK_MAX_SEG, len_left);
  if (pb > cbe_lun->blocksize) {
   adj = ((lbalen->lba + lba) * cbe_lun->blocksize +
       seglen - pbo) % pb;
   if (seglen > adj)
    seglen -= adj;
   else
    seglen -= seglen % cbe_lun->blocksize;
  } else
   seglen -= seglen % cbe_lun->blocksize;
  beio->sg_segs[i].len = seglen;
  beio->sg_segs[i].addr = uma_zalloc(be_lun->lun_zone, M_WAITOK);

  DPRINTF("segment %d addr %p len %zd\n", i,
   beio->sg_segs[i].addr, beio->sg_segs[i].len);

  beio->num_segs++;
  len_left -= seglen;

  buf = beio->sg_segs[i].addr;
  end = buf + seglen;
  for (; buf < end; buf += cbe_lun->blocksize) {
   if (lbalen->flags & SWS_NDOB) {
    memset(buf, 0, cbe_lun->blocksize);
   } else {
    memcpy(buf, io->scsiio.kern_data_ptr,
        cbe_lun->blocksize);
   }
   if (lbalen->flags & SWS_LBDATA)
    scsi_ulto4b(lbalen->lba + lba, buf);
   lba++;
  }
 }

 beio->io_offset = lbalen->lba * cbe_lun->blocksize;
 beio->io_len = lba * cbe_lun->blocksize;


 if (len_left > 0) {
  lbalen->lba += lba;
  lbalen->len -= lba;
  beio->beio_cont = ctl_be_block_cw_done_ws;
 }

 be_lun->dispatch(be_lun, beio);
}
