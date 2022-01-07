
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int across_to_list; int across_from_list; int group_list; } ;
typedef TYPE_1__ osm_qos_sl2vl_scope_t ;


 int __free_single_element ;
 int cl_list_apply_func (int *,int ,int *) ;
 int cl_list_destroy (int *) ;
 int cl_list_remove_all (int *) ;
 int free (TYPE_1__*) ;

void osm_qos_policy_sl2vl_scope_destroy(osm_qos_sl2vl_scope_t * p)
{
 if (!p)
  return;

 cl_list_apply_func(&p->group_list, __free_single_element, ((void*)0));
 cl_list_apply_func(&p->across_from_list, __free_single_element, ((void*)0));
 cl_list_apply_func(&p->across_to_list, __free_single_element, ((void*)0));

 cl_list_remove_all(&p->group_list);
 cl_list_remove_all(&p->across_from_list);
 cl_list_remove_all(&p->across_to_list);

 cl_list_destroy(&p->group_list);
 cl_list_destroy(&p->across_from_list);
 cl_list_destroy(&p->across_to_list);

 free(p);
}
