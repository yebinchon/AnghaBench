
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * di_db; int di_gid; int di_uid; int di_flags; int di_rdev; scalar_t__ di_birthnsec; int di_birthtime; int di_mtimensec; int di_mtime; int di_atimensec; int di_atime; scalar_t__ di_extsize; int di_size; int di_mode; } ;
struct TYPE_5__ {int * di_db; int di_gid; int di_uid; int di_flags; int di_rdev; int di_mtimensec; int di_mtime; int di_atimensec; int di_atime; int di_size; int di_mode; } ;
union dinode {TYPE_2__ dp2; TYPE_1__ dp1; } ;
typedef int u_long ;
typedef int off_t ;
typedef int ino_t ;
typedef int caddr_t ;
struct TYPE_8__ {scalar_t__ fs_magic; size_t fs_maxsymlinklen; size_t fs_bsize; size_t fs_frag; int fs_fsize; } ;
struct TYPE_7__ {int c_count; int* c_addr; int c_type; int c_gid; int c_uid; int c_file_flags; int c_rdev; scalar_t__ c_birthtimensec; void* c_birthtime; int c_mtimensec; void* c_mtime; int c_atimensec; void* c_atime; scalar_t__ c_extsize; int c_size; int c_mode; } ;


 int CLRINO (int ,int ) ;
 size_t DIP (union dinode*,int ) ;
 int DIP_SET (union dinode*,int ,size_t) ;
 scalar_t__ FS_UFS1_MAGIC ;
 size_t IFMT ;
 size_t SF_SNAPSHOT ;





 int S_IFMT ;


 int TP_BSIZE ;
 int TS_BITS ;
 int TS_INODE ;
 size_t UFS_NDADDR ;
 int UFS_NIADDR ;
 void* _time32_to_time (int ) ;
 void* _time64_to_time (int ) ;
 int appendextdata (union dinode*) ;
 int di_flags ;
 int * di_ib ;
 int di_mode ;
 int di_size ;
 int dmpindir (union dinode*,int ,size_t,int,int *) ;
 int dumpinomap ;
 int dumpmap (int ,int ,int ) ;
 int howmany (size_t,int ) ;
 int memmove (char*,int ,int ) ;
 int msg (char*,size_t) ;
 scalar_t__ newtape ;
 TYPE_4__* sblock ;
 TYPE_3__ spcl ;
 int ufs1_blksout (int *,int,int ) ;
 int ufs2_blksout (union dinode*,int *,int,int ,int) ;
 int writeextdata (union dinode*,int ,int) ;
 int writeheader (int ) ;
 int writerec (char*,int ) ;

void
dumpino(union dinode *dp, ino_t ino)
{
 int ind_level, cnt, last, added;
 off_t size;
 char buf[TP_BSIZE];

 if (newtape) {
  newtape = 0;
  dumpmap(dumpinomap, TS_BITS, ino);
 }
 CLRINO(ino, dumpinomap);




 if ((DIP(dp, di_flags) & SF_SNAPSHOT) != 0) {
  DIP_SET(dp, di_size, 0);
  DIP_SET(dp, di_flags, DIP(dp, di_flags) & ~SF_SNAPSHOT);
 }
 if (sblock->fs_magic == FS_UFS1_MAGIC) {
  spcl.c_mode = dp->dp1.di_mode;
  spcl.c_size = dp->dp1.di_size;
  spcl.c_extsize = 0;
  spcl.c_atime = _time32_to_time(dp->dp1.di_atime);
  spcl.c_atimensec = dp->dp1.di_atimensec;
  spcl.c_mtime = _time32_to_time(dp->dp1.di_mtime);
  spcl.c_mtimensec = dp->dp1.di_mtimensec;
  spcl.c_birthtime = 0;
  spcl.c_birthtimensec = 0;
  spcl.c_rdev = dp->dp1.di_rdev;
  spcl.c_file_flags = dp->dp1.di_flags;
  spcl.c_uid = dp->dp1.di_uid;
  spcl.c_gid = dp->dp1.di_gid;
 } else {
  spcl.c_mode = dp->dp2.di_mode;
  spcl.c_size = dp->dp2.di_size;
  spcl.c_extsize = dp->dp2.di_extsize;
  spcl.c_atime = _time64_to_time(dp->dp2.di_atime);
  spcl.c_atimensec = dp->dp2.di_atimensec;
  spcl.c_mtime = _time64_to_time(dp->dp2.di_mtime);
  spcl.c_mtimensec = dp->dp2.di_mtimensec;
  spcl.c_birthtime = _time64_to_time(dp->dp2.di_birthtime);
  spcl.c_birthtimensec = dp->dp2.di_birthnsec;
  spcl.c_rdev = dp->dp2.di_rdev;
  spcl.c_file_flags = dp->dp2.di_flags;
  spcl.c_uid = dp->dp2.di_uid;
  spcl.c_gid = dp->dp2.di_gid;
 }
 spcl.c_type = TS_INODE;
 spcl.c_count = 0;
 switch (DIP(dp, di_mode) & S_IFMT) {

 case 0:



  return;

 case 130:



  if (DIP(dp, di_size) > 0 &&
      DIP(dp, di_size) < sblock->fs_maxsymlinklen) {
   spcl.c_addr[0] = 1;
   spcl.c_count = 1;
   added = appendextdata(dp);
   writeheader(ino);
   if (sblock->fs_magic == FS_UFS1_MAGIC)
    memmove(buf, (caddr_t)dp->dp1.di_db,
        (u_long)DIP(dp, di_size));
   else
    memmove(buf, (caddr_t)dp->dp2.di_db,
        (u_long)DIP(dp, di_size));
   buf[DIP(dp, di_size)] = '\0';
   writerec(buf, 0);
   writeextdata(dp, ino, added);
   return;
  }


 case 132:
 case 129:
  if (DIP(dp, di_size) > 0)
   break;


 case 131:
 case 128:
 case 133:
 case 134:
  added = appendextdata(dp);
  writeheader(ino);
  writeextdata(dp, ino, added);
  return;

 default:
  msg("Warning: undefined file type 0%o\n",
      DIP(dp, di_mode) & IFMT);
  return;
 }
 if (DIP(dp, di_size) > UFS_NDADDR * sblock->fs_bsize) {
  cnt = UFS_NDADDR * sblock->fs_frag;
  last = 0;
 } else {
  cnt = howmany(DIP(dp, di_size), sblock->fs_fsize);
  last = 1;
 }
 if (sblock->fs_magic == FS_UFS1_MAGIC)
  ufs1_blksout(&dp->dp1.di_db[0], cnt, ino);
 else
  ufs2_blksout(dp, &dp->dp2.di_db[0], cnt, ino, last);
 if ((size = DIP(dp, di_size) - UFS_NDADDR * sblock->fs_bsize) <= 0)
  return;
 for (ind_level = 0; ind_level < UFS_NIADDR; ind_level++) {
  dmpindir(dp, ino, DIP(dp, di_ib[ind_level]), ind_level, &size);
  if (size <= 0)
   return;
 }
}
