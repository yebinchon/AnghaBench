
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vlarb_low_list; int vlarb_high_list; int across_list; int group_list; } ;
typedef TYPE_1__ osm_qos_vlarb_scope_t ;


 int __free_single_element ;
 int cl_list_apply_func (int *,int ,int *) ;
 int cl_list_destroy (int *) ;
 int cl_list_remove_all (int *) ;
 int free (TYPE_1__*) ;

void osm_qos_policy_vlarb_scope_destroy(osm_qos_vlarb_scope_t * p)
{
 if (!p)
  return;

 cl_list_apply_func(&p->group_list, __free_single_element, ((void*)0));
 cl_list_apply_func(&p->across_list, __free_single_element, ((void*)0));
 cl_list_apply_func(&p->vlarb_high_list, __free_single_element, ((void*)0));
 cl_list_apply_func(&p->vlarb_low_list, __free_single_element, ((void*)0));

 cl_list_remove_all(&p->group_list);
 cl_list_remove_all(&p->across_list);
 cl_list_remove_all(&p->vlarb_high_list);
 cl_list_remove_all(&p->vlarb_low_list);

 cl_list_destroy(&p->group_list);
 cl_list_destroy(&p->across_list);
 cl_list_destroy(&p->vlarb_high_list);
 cl_list_destroy(&p->vlarb_low_list);

 free(p);
}
