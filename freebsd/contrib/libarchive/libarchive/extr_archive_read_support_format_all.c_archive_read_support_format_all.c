
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_clear_error (struct archive*) ;
 int archive_read_support_format_7zip (struct archive*) ;
 int archive_read_support_format_ar (struct archive*) ;
 int archive_read_support_format_cab (struct archive*) ;
 int archive_read_support_format_cpio (struct archive*) ;
 int archive_read_support_format_empty (struct archive*) ;
 int archive_read_support_format_iso9660 (struct archive*) ;
 int archive_read_support_format_lha (struct archive*) ;
 int archive_read_support_format_mtree (struct archive*) ;
 int archive_read_support_format_rar (struct archive*) ;
 int archive_read_support_format_rar5 (struct archive*) ;
 int archive_read_support_format_tar (struct archive*) ;
 int archive_read_support_format_warc (struct archive*) ;
 int archive_read_support_format_xar (struct archive*) ;
 int archive_read_support_format_zip (struct archive*) ;

int
archive_read_support_format_all(struct archive *a)
{
 archive_check_magic(a, ARCHIVE_READ_MAGIC,
     ARCHIVE_STATE_NEW, "archive_read_support_format_all");
 archive_read_support_format_ar(a);
 archive_read_support_format_cpio(a);
 archive_read_support_format_empty(a);
 archive_read_support_format_lha(a);
 archive_read_support_format_mtree(a);
 archive_read_support_format_tar(a);
 archive_read_support_format_xar(a);
 archive_read_support_format_warc(a);







 archive_read_support_format_7zip(a);
 archive_read_support_format_cab(a);
 archive_read_support_format_rar(a);
 archive_read_support_format_rar5(a);
 archive_read_support_format_iso9660(a);


 archive_read_support_format_zip(a);







 archive_clear_error(a);
 return (ARCHIVE_OK);
}
