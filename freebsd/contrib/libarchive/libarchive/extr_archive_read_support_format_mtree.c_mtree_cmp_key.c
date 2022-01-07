
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtree_entry {int name; } ;
struct archive_rb_node {int dummy; } ;


 int strcmp (int ,void const*) ;

__attribute__((used)) static int
mtree_cmp_key(const struct archive_rb_node *n, const void *key)
{
 const struct mtree_entry *e = (const struct mtree_entry *)n;

 return (strcmp(e->name, key));
}
