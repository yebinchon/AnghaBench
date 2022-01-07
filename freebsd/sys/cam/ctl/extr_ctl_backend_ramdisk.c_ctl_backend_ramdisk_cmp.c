
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kern_data_len; int kern_data_ptr; int kern_rel_offset; } ;
union ctl_io {TYPE_1__ scsiio; } ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int u_int ;
struct ctl_be_ramdisk_lun {int dummy; } ;
struct ctl_be_lun {int blocksize; int pblockexp; struct ctl_be_ramdisk_lun* be_lun; } ;
typedef int info ;
struct TYPE_6__ {int lba; } ;
struct TYPE_5__ {int len; } ;


 TYPE_3__* ARGS (union ctl_io*) ;
 struct ctl_be_lun* CTL_BACKEND_LUN (union ctl_io*) ;
 int GP_READ ;
 TYPE_2__* PRIV (union ctl_io*) ;
 int SSD_ELEM_INFO ;
 int SSD_ELEM_NONE ;
 int SSD_KEY_MISCOMPARE ;
 int UINT_MAX ;
 int cmp (int,int *,int) ;
 int * ctl_backend_ramdisk_getpage (struct ctl_be_ramdisk_lun*,int,int ) ;
 int ctl_set_sense (TYPE_1__*,int,int ,int,int,int ,int,int **,int ) ;
 int scsi_u64to8b (int,int *) ;

__attribute__((used)) static int
ctl_backend_ramdisk_cmp(union ctl_io *io)
{
 struct ctl_be_lun *cbe_lun = CTL_BACKEND_LUN(io);
 struct ctl_be_ramdisk_lun *be_lun = cbe_lun->be_lun;
 uint8_t *page;
 uint8_t info[8];
 uint64_t lba;
 u_int lbaoff, lbas, res, off;

 lbas = io->scsiio.kern_data_len / cbe_lun->blocksize;
 lba = ARGS(io)->lba + PRIV(io)->len - lbas;
 off = 0;
 for (; lbas > 0; lbas--, lba++) {
  page = ctl_backend_ramdisk_getpage(be_lun,
      lba >> cbe_lun->pblockexp, GP_READ);
  lbaoff = lba & ~(UINT_MAX << cbe_lun->pblockexp);
  page += lbaoff * cbe_lun->blocksize;
  res = cmp(io->scsiio.kern_data_ptr + off, page,
      cbe_lun->blocksize);
  off += res;
  if (res < cbe_lun->blocksize)
   break;
 }
 if (lbas > 0) {
  off += io->scsiio.kern_rel_offset - io->scsiio.kern_data_len;
  scsi_u64to8b(off, info);
  ctl_set_sense(&io->scsiio, 1,
                    SSD_KEY_MISCOMPARE,
              0x1D, 0x00,
               SSD_ELEM_INFO,
               sizeof(info), &info,
               SSD_ELEM_NONE);
  return (1);
 }
 return (0);
}
