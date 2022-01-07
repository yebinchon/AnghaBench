
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct direct {int d_type; scalar_t__ d_reclen; scalar_t__ d_ino; } ;
typedef size_t off_t ;
struct TYPE_2__ {size_t fs_bsize; } ;


 scalar_t__ DIRBLKSIZ ;
 int DT_UNKNOWN ;
 TYPE_1__ sblock ;

__attribute__((used)) static void
dir_clear_block(const char *block, off_t off)
{
 struct direct *dp;

 for (; off < sblock.fs_bsize; off += DIRBLKSIZ) {
  dp = (struct direct *)&block[off];
  dp->d_ino = 0;
  dp->d_reclen = DIRBLKSIZ;
  dp->d_type = DT_UNKNOWN;
 }
}
