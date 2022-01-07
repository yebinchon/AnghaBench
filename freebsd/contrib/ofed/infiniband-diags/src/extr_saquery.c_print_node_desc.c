
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ node_type; int node_guid; } ;
struct TYPE_7__ {scalar_t__ description; } ;
struct TYPE_5__ {int lid; TYPE_2__ node_info; TYPE_3__ node_desc; } ;
typedef TYPE_1__ ib_node_record_t ;
typedef TYPE_2__ ib_node_info_t ;
typedef TYPE_3__ ib_node_desc_t ;


 scalar_t__ IB_NODE_TYPE_CA ;
 int cl_ntoh16 (int ) ;
 int free (char*) ;
 int node_name_map ;
 int printf (char*,int,char*) ;
 char* remap_node_name (int ,int ,char*) ;

__attribute__((used)) static void print_node_desc(ib_node_record_t * node_record)
{
 ib_node_info_t *p_ni = &(node_record->node_info);
 ib_node_desc_t *p_nd = &(node_record->node_desc);
 char *name;

 if (p_ni->node_type == IB_NODE_TYPE_CA) {
  name = remap_node_name(node_name_map,
     node_record->node_info.node_guid,
     (char *)p_nd->description);
  printf("%6d  \"%s\"\n", cl_ntoh16(node_record->lid), name);
  free(name);
 }
}
