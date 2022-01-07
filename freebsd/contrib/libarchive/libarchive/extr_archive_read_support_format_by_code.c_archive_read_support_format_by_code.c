
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;


 int ARCHIVE_FORMAT_BASE_MASK ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_read_support_format_7zip (struct archive*) ;
 int archive_read_support_format_ar (struct archive*) ;
 int archive_read_support_format_cab (struct archive*) ;
 int archive_read_support_format_cpio (struct archive*) ;
 int archive_read_support_format_iso9660 (struct archive*) ;
 int archive_read_support_format_lha (struct archive*) ;
 int archive_read_support_format_mtree (struct archive*) ;
 int archive_read_support_format_rar (struct archive*) ;
 int archive_read_support_format_rar5 (struct archive*) ;
 int archive_read_support_format_tar (struct archive*) ;
 int archive_read_support_format_xar (struct archive*) ;
 int archive_read_support_format_zip (struct archive*) ;

int
archive_read_support_format_by_code(struct archive *a, int format_code)
{
 archive_check_magic(a, ARCHIVE_READ_MAGIC,
     ARCHIVE_STATE_NEW, "archive_read_support_format_by_code");

 switch (format_code & ARCHIVE_FORMAT_BASE_MASK) {
 case 139:
  return archive_read_support_format_7zip(a);
  break;
 case 138:
  return archive_read_support_format_ar(a);
  break;
 case 137:
  return archive_read_support_format_cab(a);
  break;
 case 136:
  return archive_read_support_format_cpio(a);
  break;
 case 135:
  return archive_read_support_format_iso9660(a);
  break;
 case 134:
  return archive_read_support_format_lha(a);
  break;
 case 133:
  return archive_read_support_format_mtree(a);
  break;
 case 132:
  return archive_read_support_format_rar(a);
  break;
 case 131:
  return archive_read_support_format_rar5(a);
  break;
 case 130:
  return archive_read_support_format_tar(a);
  break;
 case 129:
  return archive_read_support_format_xar(a);
  break;
 case 128:
  return archive_read_support_format_zip(a);
  break;
 }
 return (ARCHIVE_FATAL);
}
