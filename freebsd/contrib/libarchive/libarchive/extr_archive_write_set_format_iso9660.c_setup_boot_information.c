
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct isoent {TYPE_3__* file; } ;
struct TYPE_4__ {int media_type; struct isoent* boot; } ;
struct iso9660 {int temp_fd; TYPE_1__ el_torito; } ;
struct archive_write {int archive; struct iso9660* format_data; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ intmax_t ;
typedef scalar_t__ int64_t ;
typedef int buff ;
struct TYPE_5__ {scalar_t__ offset_of_temp; scalar_t__ location; } ;
struct TYPE_6__ {TYPE_2__ content; int entry; } ;


 int ARCHIVE_FATAL ;
 int SEEK_SET ;
 scalar_t__ SYSTEM_AREA_BLOCK ;
 scalar_t__ archive_entry_size (int ) ;
 scalar_t__ archive_le32dec (unsigned char*) ;
 int archive_set_error (int *,int ,char*,scalar_t__) ;
 int errno ;
 scalar_t__ fd_boot_image_size (int ) ;
 int lseek (int ,scalar_t__,int ) ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ read (int ,unsigned char*,size_t) ;
 int set_num_731 (unsigned char*,scalar_t__) ;
 int write_to_temp (struct archive_write*,unsigned char*,int) ;

__attribute__((used)) static int
setup_boot_information(struct archive_write *a)
{
 struct iso9660 *iso9660 = a->format_data;
 struct isoent *np;
 int64_t size;
 uint32_t sum;
 unsigned char buff[4096];

 np = iso9660->el_torito.boot;
 lseek(iso9660->temp_fd,
     np->file->content.offset_of_temp + 64, SEEK_SET);
 size = archive_entry_size(np->file->entry) - 64;
 if (size <= 0) {
  archive_set_error(&a->archive, errno,
      "Boot file(%jd) is too small", (intmax_t)size + 64);
  return (ARCHIVE_FATAL);
 }
 sum = 0;
 while (size > 0) {
  size_t rsize;
  ssize_t i, rs;

  if (size > (int64_t)sizeof(buff))
   rsize = sizeof(buff);
  else
   rsize = (size_t)size;

  rs = read(iso9660->temp_fd, buff, rsize);
  if (rs <= 0) {
   archive_set_error(&a->archive, errno,
       "Can't read temporary file(%jd)",
       (intmax_t)rs);
   return (ARCHIVE_FATAL);
  }
  for (i = 0; i < rs; i += 4)
   sum += archive_le32dec(buff + i);
  size -= rs;
 }

 set_num_731(buff, SYSTEM_AREA_BLOCK);

 set_num_731(buff+4, np->file->content.location);

 size = fd_boot_image_size(iso9660->el_torito.media_type);
 if (size == 0)
  size = archive_entry_size(np->file->entry);
 set_num_731(buff+8, (uint32_t)size);

 set_num_731(buff+12, sum);

 memset(buff+16, 0, 40);


 lseek(iso9660->temp_fd,
     np->file->content.offset_of_temp + 8, SEEK_SET);
 return (write_to_temp(a, buff, 56));
}
