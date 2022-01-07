
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat32 {int st_spare; scalar_t__ st_btim_ext; scalar_t__ st_ctim_ext; scalar_t__ st_mtim_ext; scalar_t__ st_atim_ext; scalar_t__ st_padding1; scalar_t__ st_padding0; } ;
struct stat {int dummy; } ;


 int CP (struct stat,struct stat32,int ) ;
 int TS_CP (struct stat,struct stat32,int ) ;
 int bzero (int ,int) ;
 int st_atim ;
 int st_birthtim ;
 int st_blksize ;
 int st_blocks ;
 int st_ctim ;
 int st_dev ;
 int st_flags ;
 int st_gen ;
 int st_gid ;
 int st_ino ;
 int st_mode ;
 int st_mtim ;
 int st_nlink ;
 int st_rdev ;
 int st_size ;
 int st_uid ;

__attribute__((used)) static void
copy_stat(struct stat *in, struct stat32 *out)
{

 CP(*in, *out, st_dev);
 CP(*in, *out, st_ino);
 CP(*in, *out, st_mode);
 CP(*in, *out, st_nlink);
 CP(*in, *out, st_uid);
 CP(*in, *out, st_gid);
 CP(*in, *out, st_rdev);
 TS_CP(*in, *out, st_atim);
 TS_CP(*in, *out, st_mtim);
 TS_CP(*in, *out, st_ctim);
 CP(*in, *out, st_size);
 CP(*in, *out, st_blocks);
 CP(*in, *out, st_blksize);
 CP(*in, *out, st_flags);
 CP(*in, *out, st_gen);
 TS_CP(*in, *out, st_birthtim);
 out->st_padding0 = 0;
 out->st_padding1 = 0;






 bzero(out->st_spare, sizeof(out->st_spare));
}
