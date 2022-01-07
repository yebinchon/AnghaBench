
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dma_start_bt; } ;
union ctl_io {TYPE_1__ io_hdr; int scsiio; } ;
struct ctl_be_block_lun {int io_lock; int disk_stats; } ;
struct ctl_be_block_io {int first_error; scalar_t__ first_error_offset; scalar_t__ num_bios_done; scalar_t__ send_complete; scalar_t__ num_bios_sent; scalar_t__ bio_cmd; int * beio_cont; int ds_t0; int ds_trans_type; int ds_tag_type; int io_len; struct ctl_be_block_lun* lun; union ctl_io* io; } ;
struct bio {int bio_error; scalar_t__ bio_offset; struct ctl_be_block_io* bio_caller1; } ;
struct TYPE_4__ {int flags; } ;


 TYPE_2__* ARGS (union ctl_io*) ;
 scalar_t__ BIO_DELETE ;
 scalar_t__ BIO_FLUSH ;
 scalar_t__ BIO_READ ;
 scalar_t__ BIO_WRITE ;
 int CTL_LLF_READ ;
 int CTL_LLF_VERIFY ;
 int DPRINTF (char*) ;
 int EACCES ;
 int EDQUOT ;
 int ENOSPC ;
 int EOPNOTSUPP ;
 int EROFS ;
 int ctl_complete_beio (struct ctl_be_block_io*) ;
 int ctl_datamove (union ctl_io*) ;
 int ctl_serseq_done (union ctl_io*) ;
 int ctl_set_hw_write_protected (int *) ;
 int ctl_set_internal_failure (int *,int,int) ;
 int ctl_set_invalid_opcode (int *) ;
 int ctl_set_medium_error (int *,int) ;
 int ctl_set_space_alloc_fail (int *) ;
 int ctl_set_success (int *) ;
 int devstat_end_transaction (int ,int ,int ,int ,int *,int *) ;
 int g_destroy_bio (struct bio*) ;
 int getbinuptime (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
ctl_be_block_biodone(struct bio *bio)
{
 struct ctl_be_block_io *beio;
 struct ctl_be_block_lun *be_lun;
 union ctl_io *io;
 int error;

 beio = bio->bio_caller1;
 be_lun = beio->lun;
 io = beio->io;

 DPRINTF("entered\n");

 error = bio->bio_error;
 mtx_lock(&be_lun->io_lock);
 if (error != 0 &&
     (beio->first_error == 0 ||
      bio->bio_offset < beio->first_error_offset)) {
  beio->first_error = error;
  beio->first_error_offset = bio->bio_offset;
 }

 beio->num_bios_done++;





 g_destroy_bio(bio);





 if ((beio->send_complete == 0)
  || (beio->num_bios_done < beio->num_bios_sent)) {
  mtx_unlock(&be_lun->io_lock);
  return;
 }





 devstat_end_transaction(beio->lun->disk_stats, beio->io_len,
     beio->ds_tag_type, beio->ds_trans_type,
             ((void*)0), &beio->ds_t0);
 mtx_unlock(&be_lun->io_lock);





 error = beio->first_error;
 if (error != 0) {
  if (error == EOPNOTSUPP) {
   ctl_set_invalid_opcode(&io->scsiio);
  } else if (error == ENOSPC || error == EDQUOT) {
   ctl_set_space_alloc_fail(&io->scsiio);
  } else if (error == EROFS || error == EACCES) {
   ctl_set_hw_write_protected(&io->scsiio);
  } else if (beio->bio_cmd == BIO_FLUSH) {

   ctl_set_internal_failure(&io->scsiio,
                     1,
                       0xbad2);
  } else {
   ctl_set_medium_error(&io->scsiio,
       beio->bio_cmd == BIO_READ);
  }
  ctl_complete_beio(beio);
  return;
 }





 if ((beio->bio_cmd == BIO_WRITE)
  || (beio->bio_cmd == BIO_FLUSH)
  || (beio->bio_cmd == BIO_DELETE)
  || (ARGS(io)->flags & CTL_LLF_VERIFY)) {
  ctl_set_success(&io->scsiio);
  ctl_complete_beio(beio);
 } else {
  if ((ARGS(io)->flags & CTL_LLF_READ) &&
      beio->beio_cont == ((void*)0)) {
   ctl_set_success(&io->scsiio);
   ctl_serseq_done(io);
  }



  ctl_datamove(io);
 }
}
