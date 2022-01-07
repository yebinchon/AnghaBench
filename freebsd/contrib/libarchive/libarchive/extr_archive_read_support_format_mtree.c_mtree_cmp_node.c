
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtree_entry {int name; } ;
struct archive_rb_node {int dummy; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
mtree_cmp_node(const struct archive_rb_node *n1,
    const struct archive_rb_node *n2)
{
 const struct mtree_entry *e1 = (const struct mtree_entry *)n1;
 const struct mtree_entry *e2 = (const struct mtree_entry *)n2;

 return (strcmp(e1->name, e2->name));
}
