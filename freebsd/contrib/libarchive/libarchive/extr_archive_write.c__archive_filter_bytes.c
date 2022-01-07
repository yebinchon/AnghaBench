
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_filter {int bytes_written; } ;
struct archive {int dummy; } ;
typedef int int64_t ;


 struct archive_write_filter* filter_lookup (struct archive*,int) ;

__attribute__((used)) static int64_t
_archive_filter_bytes(struct archive *_a, int n)
{
 struct archive_write_filter *f = filter_lookup(_a, n);
 return f == ((void*)0) ? -1 : f->bytes_written;
}
