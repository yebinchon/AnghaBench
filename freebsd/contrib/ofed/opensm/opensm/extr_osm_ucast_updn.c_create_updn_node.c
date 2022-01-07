
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct updn_node {int rank; int id; TYPE_1__* sw; } ;
struct TYPE_3__ {int p_node; } ;
typedef TYPE_1__ osm_switch_t ;


 int cl_ntoh64 (int ) ;
 struct updn_node* malloc (int) ;
 int memset (struct updn_node*,int ,int) ;
 int osm_node_get_node_guid (int ) ;

__attribute__((used)) static struct updn_node *create_updn_node(osm_switch_t * sw)
{
 struct updn_node *u;

 u = malloc(sizeof(*u));
 if (!u)
  return ((void*)0);
 memset(u, 0, sizeof(*u));
 u->sw = sw;
 u->id = cl_ntoh64(osm_node_get_node_guid(sw->p_node));
 u->rank = 0xffffffff;
 return u;
}
