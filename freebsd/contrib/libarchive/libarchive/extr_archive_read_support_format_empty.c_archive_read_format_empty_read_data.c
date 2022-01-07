
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;
typedef int int64_t ;


 int ARCHIVE_EOF ;

__attribute__((used)) static int
archive_read_format_empty_read_data(struct archive_read *a,
    const void **buff, size_t *size, int64_t *offset)
{
 (void)a;
 (void)buff;
 (void)size;
 (void)offset;

 return (ARCHIVE_EOF);
}
