
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
cmp_node_wcs(const struct archive_rb_node *n1,
    const struct archive_rb_node *n2)
{
 struct match_file *f1 = (struct match_file *)(uintptr_t)n1;
 struct match_file *f2 = (struct match_file *)(uintptr_t)n2;
 const wchar_t *p1, *p2;

 archive_mstring_get_wcs(((void*)0), &(f1->pathname), &p1);
 archive_mstring_get_wcs(((void*)0), &(f2->pathname), &p2);
 if (p1 == ((void*)0))
  return (1);
 if (p2 == ((void*)0))
  return (-1);
 return (wcscmp(p1, p2));
}
