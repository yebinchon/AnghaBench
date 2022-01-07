
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int archive; } ;
typedef int int64_t ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FAILED ;
 int archive_set_error (int *,int ,char*) ;

__attribute__((used)) static int
zisofs_read_data(struct archive_read *a,
    const void **buff, size_t *size, int64_t *offset)
{

 (void)buff;
 (void)size;
 (void)offset;
 archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
     "zisofs is not supported on this platform.");
 return (ARCHIVE_FAILED);
}
