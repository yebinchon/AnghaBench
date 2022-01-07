
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tftp_handle {scalar_t__ tftp_tsize; size_t off; int tftp_blksize; int currblock; int validsize; scalar_t__ islastblock; TYPE_1__* tftp_hdr; } ;
struct open_file {struct tftp_handle* f_fsdata; } ;
struct TYPE_2__ {scalar_t__ th_data; } ;


 int EINVAL ;
 int bcopy (scalar_t__,void*,int) ;
 int printf (char*,...) ;
 int tftp_getnextblock (struct tftp_handle*) ;
 int tftp_makereq (struct tftp_handle*) ;
 int tftp_senderr (struct tftp_handle*,int ,char*) ;
 int twiddle (int) ;

__attribute__((used)) static int
tftp_read(struct open_file *f, void *addr, size_t size,
    size_t *resid )
{
 struct tftp_handle *tftpfile;
 size_t res;
 int rc;

 rc = 0;
 res = size;
 tftpfile = f->f_fsdata;


 if (tftpfile->tftp_tsize > 0 &&
     tftpfile->off + size > tftpfile->tftp_tsize) {
  size = tftpfile->tftp_tsize - tftpfile->off;
 }

 while (size > 0) {
  int needblock, count;

  twiddle(32);

  needblock = tftpfile->off / tftpfile->tftp_blksize + 1;

  if (tftpfile->currblock > needblock) {
   tftp_senderr(tftpfile, 0, "No error: read aborted");
   rc = tftp_makereq(tftpfile);
   if (rc != 0)
    break;
  }

  while (tftpfile->currblock < needblock) {

   rc = tftp_getnextblock(tftpfile);
   if (rc) {



    return (rc);
   }
   if (tftpfile->islastblock)
    break;
  }

  if (tftpfile->currblock == needblock) {
   int offinblock, inbuffer;

   offinblock = tftpfile->off % tftpfile->tftp_blksize;

   inbuffer = tftpfile->validsize - offinblock;
   if (inbuffer < 0) {




    return (EINVAL);
   }
   count = (size < inbuffer ? size : inbuffer);
   bcopy(tftpfile->tftp_hdr->th_data + offinblock,
       addr, count);

   addr = (char *)addr + count;
   tftpfile->off += count;
   size -= count;
   res -= count;

   if ((tftpfile->islastblock) && (count == inbuffer))
    break;
  } else {



   return (EINVAL);
  }

 }

 if (resid != ((void*)0))
  *resid = res;
 return (rc);
}
