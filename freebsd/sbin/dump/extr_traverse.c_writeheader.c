
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union u_spcl {int dummy; } u_spcl ;
typedef int int32_t ;
typedef int ino_t ;
struct TYPE_2__ {int c_checksum; int c_magic; int c_inumber; int c_mtimensec; int c_atimensec; int c_mtime; int c_atime; } ;


 int CHECKSUM ;
 int FS_UFS2_MAGIC ;
 int rsync_friendly ;
 TYPE_1__ spcl ;
 int writerec (char*,int) ;

void
writeheader(ino_t ino)
{
 int32_t sum, cnt, *lp;

 if (rsync_friendly >= 2) {

  spcl.c_atime = spcl.c_mtime;
  spcl.c_atimensec = spcl.c_mtimensec;
 }
 spcl.c_inumber = ino;
 spcl.c_magic = FS_UFS2_MAGIC;
 spcl.c_checksum = 0;
 lp = (int32_t *)&spcl;
 sum = 0;
 cnt = sizeof(union u_spcl) / (4 * sizeof(int32_t));
 while (--cnt >= 0) {
  sum += *lp++;
  sum += *lp++;
  sum += *lp++;
  sum += *lp++;
 }
 spcl.c_checksum = CHECKSUM - sum;
 writerec((char *)&spcl, 1);
}
