
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v7tar {size_t entry_bytes_remaining; } ;
struct archive_write {scalar_t__ format_data; } ;
typedef int ssize_t ;


 int ARCHIVE_OK ;
 int __archive_write_output (struct archive_write*,void const*,size_t) ;

__attribute__((used)) static ssize_t
archive_write_v7tar_data(struct archive_write *a, const void *buff, size_t s)
{
 struct v7tar *v7tar;
 int ret;

 v7tar = (struct v7tar *)a->format_data;
 if (s > v7tar->entry_bytes_remaining)
  s = (size_t)v7tar->entry_bytes_remaining;
 ret = __archive_write_output(a, buff, s);
 v7tar->entry_bytes_remaining -= s;
 if (ret != ARCHIVE_OK)
  return (ret);
 return (s);
}
