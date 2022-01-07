
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int multilist_t ;
struct TYPE_2__ {int dn_object; int dn_objset; } ;
typedef TYPE_1__ dnode_t ;


 unsigned int dnode_hash (int ,int ) ;
 unsigned int multilist_get_num_sublists (int *) ;

unsigned int
dnode_multilist_index_func(multilist_t *ml, void *obj)
{
 dnode_t *dn = obj;
 return (dnode_hash(dn->dn_objset, dn->dn_object) %
     multilist_get_num_sublists(ml));
}
