
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct match_file {int pathname; } ;
struct archive_rb_node {int dummy; } ;


 int archive_mstring_get_mbs (int *,int *,char const**) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int
cmp_key_mbs(const struct archive_rb_node *n, const void *key)
{
 struct match_file *f = (struct match_file *)(uintptr_t)n;
 const char *p;

 archive_mstring_get_mbs(((void*)0), &(f->pathname), &p);
 if (p == ((void*)0))
  return (-1);
 return (strcmp(p, (const char *)key));
}
