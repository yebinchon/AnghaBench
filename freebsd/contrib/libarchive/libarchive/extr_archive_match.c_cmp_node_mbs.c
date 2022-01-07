
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct match_file {int pathname; } ;
struct archive_rb_node {int dummy; } ;


 int archive_mstring_get_mbs (int *,int *,char const**) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int
cmp_node_mbs(const struct archive_rb_node *n1,
    const struct archive_rb_node *n2)
{
 struct match_file *f1 = (struct match_file *)(uintptr_t)n1;
 struct match_file *f2 = (struct match_file *)(uintptr_t)n2;
 const char *p1, *p2;

 archive_mstring_get_mbs(((void*)0), &(f1->pathname), &p1);
 archive_mstring_get_mbs(((void*)0), &(f2->pathname), &p2);
 if (p1 == ((void*)0))
  return (1);
 if (p2 == ((void*)0))
  return (-1);
 return (strcmp(p1, p2));
}
