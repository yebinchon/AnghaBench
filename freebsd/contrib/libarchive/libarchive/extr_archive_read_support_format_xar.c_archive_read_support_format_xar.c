
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WARN ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (int *,int ,char*) ;

int
archive_read_support_format_xar(struct archive *_a)
{
 struct archive_read *a = (struct archive_read *)_a;
 archive_check_magic(_a, ARCHIVE_READ_MAGIC,
     ARCHIVE_STATE_NEW, "archive_read_support_format_xar");

 archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
     "Xar not supported on this platform");
 return (ARCHIVE_WARN);
}
