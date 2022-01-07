
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_WARN ;
 int archive_set_error (int *,int ,char*) ;

int
archive_write_set_format_xar(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;

 archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
     "Xar not supported on this platform");
 return (ARCHIVE_WARN);
}
