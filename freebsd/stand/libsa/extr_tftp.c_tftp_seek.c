
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tftp_handle {int off; } ;
struct open_file {struct tftp_handle* f_fsdata; } ;
typedef int off_t ;


 int EOFFSET ;


 int errno ;

__attribute__((used)) static off_t
tftp_seek(struct open_file *f, off_t offset, int where)
{
 struct tftp_handle *tftpfile;
 tftpfile = f->f_fsdata;

 switch (where) {
 case 128:
  tftpfile->off = offset;
  break;
 case 129:
  tftpfile->off += offset;
  break;
 default:
  errno = EOFFSET;
  return (-1);
 }
 return (tftpfile->off);
}
