
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_be_block_lun {int vn; int io_lock; int disk_stats; } ;
struct ctl_be_block_io {int num_bios_sent; int send_complete; int ds_t0; } ;
struct cdevsw {int (* d_strategy ) (struct bio*) ;} ;
struct cdev {int dummy; } ;
struct bio {int bio_error; struct cdev* bio_dev; scalar_t__ bio_pblkno; struct ctl_be_block_io* bio_caller1; int (* bio_done ) (struct bio*) ;scalar_t__ bio_data; scalar_t__ bio_offset; int bio_cmd; } ;


 int BIO_FLUSH ;
 int DPRINTF (char*) ;
 int ENXIO ;
 int binuptime (int *) ;
 int ctl_be_block_biodone (struct bio*) ;
 int dev_relthread (struct cdev*,int) ;
 int devstat_start_transaction (int ,int *) ;
 struct cdevsw* devvn_refthread (int ,struct cdev**,int*) ;
 struct bio* g_alloc_bio () ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct bio*) ;

__attribute__((used)) static void
ctl_be_block_flush_dev(struct ctl_be_block_lun *be_lun,
         struct ctl_be_block_io *beio)
{
 struct bio *bio;
 struct cdevsw *csw;
 struct cdev *dev;
 int ref;

 DPRINTF("entered\n");


 bio = g_alloc_bio();

 bio->bio_cmd = BIO_FLUSH;
 bio->bio_offset = 0;
 bio->bio_data = 0;
 bio->bio_done = ctl_be_block_biodone;
 bio->bio_caller1 = beio;
 bio->bio_pblkno = 0;






 beio->num_bios_sent = 1;
 beio->send_complete = 1;

 binuptime(&beio->ds_t0);
 mtx_lock(&be_lun->io_lock);
 devstat_start_transaction(be_lun->disk_stats, &beio->ds_t0);
 mtx_unlock(&be_lun->io_lock);

 csw = devvn_refthread(be_lun->vn, &dev, &ref);
 if (csw) {
  bio->bio_dev = dev;
  csw->d_strategy(bio);
  dev_relthread(dev, ref);
 } else {
  bio->bio_error = ENXIO;
  ctl_be_block_biodone(bio);
 }
}
