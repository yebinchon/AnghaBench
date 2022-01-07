
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct iter_hints_stub {int node; } ;
struct iter_hints {int tree; } ;


 int dname_count_size_labels (int *,size_t*) ;
 int hints_stub_free (struct iter_hints_stub*) ;
 scalar_t__ name_tree_find (int *,int *,size_t,int,int ) ;
 int name_tree_init_parents (int *) ;
 int rbtree_delete (int *,int *) ;

void
hints_delete_stub(struct iter_hints* hints, uint16_t c, uint8_t* nm)
{
 struct iter_hints_stub *z;
 size_t len;
 int labs = dname_count_size_labels(nm, &len);
 if(!(z=(struct iter_hints_stub*)name_tree_find(&hints->tree,
  nm, len, labs, c)))
  return;
 (void)rbtree_delete(&hints->tree, &z->node);
 hints_stub_free(z);
 name_tree_init_parents(&hints->tree);
}
