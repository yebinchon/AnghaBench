
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_ctim; int st_mtim; int st_atim; int st_size; int st_nlink; int st_ino; int st_dev; } ;
struct TYPE_3__ {int st_ctim; int st_mtim; int st_atim; int st_size; int st_nlink; int st_ino; int st_dev; } ;
typedef TYPE_1__ cloudabi_filestat_t ;


 int cloudabi_convert_timespec (int *,int *) ;

__attribute__((used)) static void
convert_stat(const struct stat *sb, cloudabi_filestat_t *csb)
{
 cloudabi_filestat_t res = {
  .st_dev = sb->st_dev,
  .st_ino = sb->st_ino,
  .st_nlink = sb->st_nlink,
  .st_size = sb->st_size,
 };

 cloudabi_convert_timespec(&sb->st_atim, &res.st_atim);
 cloudabi_convert_timespec(&sb->st_mtim, &res.st_mtim);
 cloudabi_convert_timespec(&sb->st_ctim, &res.st_ctim);
 *csb = res;
}
