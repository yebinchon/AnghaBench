
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter {char const* name; } ;
struct archive {int dummy; } ;


 struct archive_read_filter* get_filter (struct archive*,int) ;

__attribute__((used)) static const char *
_archive_filter_name(struct archive *_a, int n)
{
 struct archive_read_filter *f = get_filter(_a, n);
 return f != ((void*)0) ? f->name : ((void*)0);
}
