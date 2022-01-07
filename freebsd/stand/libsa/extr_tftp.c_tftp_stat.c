
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tftp_handle {int tftp_tsize; } ;
struct stat {int st_mode; int st_nlink; int st_size; scalar_t__ st_gid; scalar_t__ st_uid; } ;
struct open_file {struct tftp_handle* f_fsdata; } ;


 int S_IFREG ;

__attribute__((used)) static int
tftp_stat(struct open_file *f, struct stat *sb)
{
 struct tftp_handle *tftpfile;
 tftpfile = f->f_fsdata;

 sb->st_mode = 0444 | S_IFREG;
 sb->st_nlink = 1;
 sb->st_uid = 0;
 sb->st_gid = 0;
 sb->st_size = tftpfile->tftp_tsize;
 return (0);
}
