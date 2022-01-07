
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct match_file {int pathname; } ;
struct archive_rb_node {int dummy; } ;


 int archive_mstring_get_wcs (int *,int *,int const**) ;
 int wcscmp (int const*,int const*) ;

__attribute__((used)) static int
cmp_key_wcs(const struct archive_rb_node *n, const void *key)
{
 struct match_file *f = (struct match_file *)(uintptr_t)n;
 const wchar_t *p;

 archive_mstring_get_wcs(((void*)0), &(f->pathname), &p);
 if (p == ((void*)0))
  return (-1);
 return (wcscmp(p, (const wchar_t *)key));
}
