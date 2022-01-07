
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tftp_handle {struct tftp_handle* pkt; struct tftp_handle* path; } ;
struct open_file {struct tftp_handle* f_fsdata; } ;


 int free (struct tftp_handle*) ;
 scalar_t__ is_open ;

__attribute__((used)) static int
tftp_close(struct open_file *f)
{
 struct tftp_handle *tftpfile;
 tftpfile = f->f_fsdata;



 if (tftpfile) {
  free(tftpfile->path);
  free(tftpfile->pkt);
  free(tftpfile);
 }
 is_open = 0;
 return (0);
}
