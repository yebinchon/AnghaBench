
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcl_list {int region; int tree; } ;


 int free (struct tcl_list*) ;
 int regional_destroy (int ) ;
 int tcl_list_free_node ;
 int traverse_postorder (int *,int ,int *) ;

void
tcl_list_delete(struct tcl_list* tcl)
{
 if(!tcl)
  return;
 traverse_postorder(&tcl->tree, tcl_list_free_node, ((void*)0));
 regional_destroy(tcl->region);
 free(tcl);
}
