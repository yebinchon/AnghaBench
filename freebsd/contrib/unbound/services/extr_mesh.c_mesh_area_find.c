
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct respip_client_info {int dummy; } ;
struct query_info {int dummy; } ;
struct TYPE_3__ {int is_priming; int is_valrec; struct respip_client_info* client_info; int query_flags; struct query_info qinfo; } ;
struct TYPE_4__ {struct mesh_state* key; } ;
struct mesh_state {TYPE_1__ s; int * unique; TYPE_2__ node; } ;
struct mesh_area {int all; } ;


 scalar_t__ rbtree_search (int *,struct mesh_state*) ;

struct mesh_state* mesh_area_find(struct mesh_area* mesh,
 struct respip_client_info* cinfo, struct query_info* qinfo,
 uint16_t qflags, int prime, int valrec)
{
 struct mesh_state key;
 struct mesh_state* result;

 key.node.key = &key;
 key.s.is_priming = prime;
 key.s.is_valrec = valrec;
 key.s.qinfo = *qinfo;
 key.s.query_flags = qflags;



 key.unique = ((void*)0);
 key.s.client_info = cinfo;

 result = (struct mesh_state*)rbtree_search(&mesh->all, &key);
 return result;
}
