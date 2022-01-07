
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct stat {int st_mode; void* st_size; void* st_gid; void* st_uid; void* st_nlink; } ;
struct open_file {scalar_t__ f_fsdata; } ;
struct TYPE_3__ {int * val; } ;
struct TYPE_4__ {TYPE_1__ fa_size; int fa_gid; int fa_uid; int fa_nlink; int fa_mode; int fa_type; } ;
struct nfs_iodesc {TYPE_2__ fa; } ;


 int* nfs_stat_types ;
 void* ntohl (int ) ;

int
nfs_stat(struct open_file *f, struct stat *sb)
{
 struct nfs_iodesc *fp = (struct nfs_iodesc *)f->f_fsdata;
 uint32_t ftype, mode;

 ftype = ntohl(fp->fa.fa_type);
 mode = ntohl(fp->fa.fa_mode);
 mode |= nfs_stat_types[ftype & 7];

 sb->st_mode = mode;
 sb->st_nlink = ntohl(fp->fa.fa_nlink);
 sb->st_uid = ntohl(fp->fa.fa_uid);
 sb->st_gid = ntohl(fp->fa.fa_gid);
 sb->st_size = ntohl(fp->fa.fa_size.val[1]);

 return (0);
}
