
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int archive; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int archive_set_error (int *,int ,char*) ;

__attribute__((used)) static int
zisofs_write_to_temp(struct archive_write *a, const void *buff, size_t s)
{
 (void)buff;
 (void)s;
 archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC, "Programming error");
 return (ARCHIVE_FATAL);
}
