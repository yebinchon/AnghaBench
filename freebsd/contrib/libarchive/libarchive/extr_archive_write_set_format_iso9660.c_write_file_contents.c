
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iso9660 {int temp_fd; } ;
struct archive_write {int archive; struct iso9660* format_data; } ;
typedef scalar_t__ ssize_t ;
typedef int intmax_t ;
typedef scalar_t__ int64_t ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int SEEK_SET ;
 int archive_set_error (int *,int ,char*,int ) ;
 int errno ;
 int lseek (int ,scalar_t__,int ) ;
 scalar_t__ read (int ,unsigned char*,size_t) ;
 unsigned char* wb_buffptr (struct archive_write*) ;
 int wb_consume (struct archive_write*,scalar_t__) ;
 size_t wb_remaining (struct archive_write*) ;

__attribute__((used)) static int
write_file_contents(struct archive_write *a, int64_t offset, int64_t size)
{
 struct iso9660 *iso9660 = a->format_data;
 int r;

 lseek(iso9660->temp_fd, offset, SEEK_SET);

 while (size) {
  size_t rsize;
  ssize_t rs;
  unsigned char *wb;

  wb = wb_buffptr(a);
  rsize = wb_remaining(a);
  if (rsize > (size_t)size)
   rsize = (size_t)size;
  rs = read(iso9660->temp_fd, wb, rsize);
  if (rs <= 0) {
   archive_set_error(&a->archive, errno,
       "Can't read temporary file(%jd)", (intmax_t)rs);
   return (ARCHIVE_FATAL);
  }
  size -= rs;
  r = wb_consume(a, rs);
  if (r < 0)
   return (r);
 }
 return (ARCHIVE_OK);
}
