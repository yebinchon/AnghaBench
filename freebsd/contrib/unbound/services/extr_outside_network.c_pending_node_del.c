
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending {int dummy; } ;
struct outside_network {int dummy; } ;
typedef int rbnode_type ;


 int pending_delete (struct outside_network*,struct pending*) ;

__attribute__((used)) static void
pending_node_del(rbnode_type* node, void* arg)
{
 struct pending* pend = (struct pending*)node;
 struct outside_network* outnet = (struct outside_network*)arg;
 pending_delete(outnet, pend);
}
