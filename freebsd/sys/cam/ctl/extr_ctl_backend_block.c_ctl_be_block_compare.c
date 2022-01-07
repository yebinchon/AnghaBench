
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union ctl_io {int scsiio; } ;
typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct ctl_be_block_io {int num_segs; TYPE_1__* sg_segs; } ;
typedef int info ;
struct TYPE_4__ {scalar_t__ ptr; } ;
struct TYPE_3__ {scalar_t__ len; int addr; } ;


 int CTLBLK_HALF_SEGS ;
 TYPE_2__* PRIV (union ctl_io*) ;
 int SSD_ELEM_INFO ;
 int SSD_ELEM_NONE ;
 int SSD_KEY_MISCOMPARE ;
 scalar_t__ cmp (int ,int ,scalar_t__) ;
 int ctl_set_sense (int *,int,int ,int,int,int ,int,int **,int ) ;
 int ctl_set_success (int *) ;
 int scsi_u64to8b (scalar_t__,int *) ;

__attribute__((used)) static void
ctl_be_block_compare(union ctl_io *io)
{
 struct ctl_be_block_io *beio;
 uint64_t off, res;
 int i;
 uint8_t info[8];

 beio = (struct ctl_be_block_io *)PRIV(io)->ptr;
 off = 0;
 for (i = 0; i < beio->num_segs; i++) {
  res = cmp(beio->sg_segs[i].addr,
      beio->sg_segs[i + CTLBLK_HALF_SEGS].addr,
      beio->sg_segs[i].len);
  off += res;
  if (res < beio->sg_segs[i].len)
   break;
 }
 if (i < beio->num_segs) {
  scsi_u64to8b(off, info);
  ctl_set_sense(&io->scsiio, 1,
                    SSD_KEY_MISCOMPARE,
              0x1D, 0x00,
               SSD_ELEM_INFO,
               sizeof(info), &info,
               SSD_ELEM_NONE);
 } else
  ctl_set_success(&io->scsiio);
}
