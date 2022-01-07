
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
 int archive_read_support_filter_bzip2 (struct archive*) ;
 int archive_read_support_filter_compress (struct archive*) ;
 int archive_read_support_filter_grzip (struct archive*) ;
 int archive_read_support_filter_gzip (struct archive*) ;
 int archive_read_support_filter_lrzip (struct archive*) ;
 int archive_read_support_filter_lz4 (struct archive*) ;
 int archive_read_support_filter_lzip (struct archive*) ;
 int archive_read_support_filter_lzma (struct archive*) ;
 int archive_read_support_filter_lzop (struct archive*) ;
 int archive_read_support_filter_rpm (struct archive*) ;
 int archive_read_support_filter_uu (struct archive*) ;
 int archive_read_support_filter_xz (struct archive*) ;
 int archive_read_support_filter_zstd (struct archive*) ;

int
archive_read_support_filter_all(struct archive *a)
{
 archive_check_magic(a, ARCHIVE_READ_MAGIC,
     ARCHIVE_STATE_NEW, "archive_read_support_filter_all");


 archive_read_support_filter_bzip2(a);

 archive_read_support_filter_compress(a);

 archive_read_support_filter_gzip(a);

 archive_read_support_filter_lzip(a);




 archive_read_support_filter_lzma(a);

 archive_read_support_filter_xz(a);

 archive_read_support_filter_uu(a);

 archive_read_support_filter_rpm(a);

 archive_read_support_filter_lrzip(a);

 archive_read_support_filter_lzop(a);

 archive_read_support_filter_grzip(a);

 archive_read_support_filter_lz4(a);

 archive_read_support_filter_zstd(a);







 archive_clear_error(a);
 return (ARCHIVE_OK);
}
