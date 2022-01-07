
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int archive; } ;
typedef int ssize_t ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int archive_set_error (int *,int ,char*) ;

__attribute__((used)) static const void *
cab_read_ahead_cfdata_deflate(struct archive_read *a, ssize_t *avail)
{
 *avail = ARCHIVE_FATAL;
 archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
     "libarchive compiled without deflate support (no libz)");
 return (((void*)0));
}
