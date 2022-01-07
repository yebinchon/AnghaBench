
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_filter {int code; } ;
struct archive {int dummy; } ;


 struct archive_write_filter* filter_lookup (struct archive*,int) ;

__attribute__((used)) static int
_archive_filter_code(struct archive *_a, int n)
{
 struct archive_write_filter *f = filter_lookup(_a, n);
 return f == ((void*)0) ? -1 : f->code;
}
