
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;
typedef int int64_t ;


 int ARCHIVE_FATAL ;

__attribute__((used)) static int64_t rar5_seek_data(struct archive_read *a, int64_t offset,
    int whence)
{
 (void) a;
 (void) offset;
 (void) whence;



 return ARCHIVE_FATAL;
}
