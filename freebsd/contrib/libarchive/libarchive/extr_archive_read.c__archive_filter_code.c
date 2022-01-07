
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter {int code; } ;
struct archive {int dummy; } ;


 struct archive_read_filter* get_filter (struct archive*,int) ;

__attribute__((used)) static int
_archive_filter_code(struct archive *_a, int n)
{
 struct archive_read_filter *f = get_filter(_a, n);
 return f == ((void*)0) ? -1 : f->code;
}
