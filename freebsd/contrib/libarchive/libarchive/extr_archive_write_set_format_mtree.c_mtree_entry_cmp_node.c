
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; } ;
struct mtree_entry {TYPE_1__ basename; } ;
struct archive_rb_node {int dummy; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
mtree_entry_cmp_node(const struct archive_rb_node *n1,
    const struct archive_rb_node *n2)
{
 const struct mtree_entry *e1 = (const struct mtree_entry *)n1;
 const struct mtree_entry *e2 = (const struct mtree_entry *)n2;

 return (strcmp(e2->basename.s, e1->basename.s));
}
