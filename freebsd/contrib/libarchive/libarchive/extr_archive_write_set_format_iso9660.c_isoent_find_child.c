
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isoent {int rbtree; } ;


 scalar_t__ __archive_rb_tree_find_node (int *,char const*) ;

__attribute__((used)) static struct isoent *
isoent_find_child(struct isoent *isoent, const char *child_name)
{
 struct isoent *np;

 np = (struct isoent *)__archive_rb_tree_find_node(
     &(isoent->rbtree), child_name);
 return (np);
}
