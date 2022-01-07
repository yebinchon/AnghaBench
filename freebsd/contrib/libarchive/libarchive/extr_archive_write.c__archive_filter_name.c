
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_filter {char const* name; } ;
struct archive {int dummy; } ;


 struct archive_write_filter* filter_lookup (struct archive*,int) ;

__attribute__((used)) static const char *
_archive_filter_name(struct archive *_a, int n)
{
 struct archive_write_filter *f = filter_lookup(_a, n);
 return f != ((void*)0) ? f->name : ((void*)0);
}
