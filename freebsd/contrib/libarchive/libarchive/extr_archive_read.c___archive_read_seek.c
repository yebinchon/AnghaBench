
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int filter; } ;
typedef int int64_t ;


 int __archive_read_filter_seek (int ,int ,int) ;

int64_t
__archive_read_seek(struct archive_read *a, int64_t offset, int whence)
{
 return __archive_read_filter_seek(a->filter, offset, whence);
}
