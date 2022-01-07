
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int archive_set_error (struct archive*,int ,char*) ;

int
archive_write_add_filter_xz(struct archive *a)
{
 archive_set_error(a, ARCHIVE_ERRNO_MISC,
     "xz compression not supported on this platform");
 return (ARCHIVE_FATAL);
}
