
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ blocksize; } ;
struct ctl_be_block_lun {int io_lock; TYPE_1__ cbe_lun; int vn; } ;
struct ctl_be_block_io {int send_complete; int num_bios_sent; } ;
struct cdevsw {int (* d_strategy ) (struct bio*) ;} ;
struct cdev {int dummy; } ;
struct bio {scalar_t__ bio_length; int bio_error; scalar_t__ bio_pblkno; struct ctl_be_block_io* bio_caller1; int (* bio_done ) (struct bio*) ;scalar_t__ bio_data; scalar_t__ bio_offset; struct cdev* bio_dev; int bio_cmd; } ;


 int BIO_DELETE ;
 int ENXIO ;
 scalar_t__ LONG_MAX ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int ctl_be_block_biodone (struct bio*) ;
 int dev_relthread (struct cdev*,int) ;
 struct cdevsw* devvn_refthread (int ,struct cdev**,int*) ;
 struct bio* g_alloc_bio () ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct bio*) ;

__attribute__((used)) static void
ctl_be_block_unmap_dev_range(struct ctl_be_block_lun *be_lun,
         struct ctl_be_block_io *beio,
         uint64_t off, uint64_t len, int last)
{
 struct bio *bio;
 uint64_t maxlen;
 struct cdevsw *csw;
 struct cdev *dev;
 int ref;

 csw = devvn_refthread(be_lun->vn, &dev, &ref);
 maxlen = LONG_MAX - (LONG_MAX % be_lun->cbe_lun.blocksize);
 while (len > 0) {
  bio = g_alloc_bio();
  bio->bio_cmd = BIO_DELETE;
  bio->bio_dev = dev;
  bio->bio_offset = off;
  bio->bio_length = MIN(len, maxlen);
  bio->bio_data = 0;
  bio->bio_done = ctl_be_block_biodone;
  bio->bio_caller1 = beio;
  bio->bio_pblkno = off / be_lun->cbe_lun.blocksize;

  off += bio->bio_length;
  len -= bio->bio_length;

  mtx_lock(&be_lun->io_lock);
  beio->num_bios_sent++;
  if (last && len == 0)
   beio->send_complete = 1;
  mtx_unlock(&be_lun->io_lock);

  if (csw) {
   csw->d_strategy(bio);
  } else {
   bio->bio_error = ENXIO;
   ctl_be_block_biodone(bio);
  }
 }
 if (csw)
  dev_relthread(dev, ref);
}
