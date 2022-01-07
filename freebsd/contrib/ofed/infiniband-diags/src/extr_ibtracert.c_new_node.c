
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ib_portid_t ;
struct TYPE_13__ {int dist; struct TYPE_13__* dnext; int path; } ;
struct TYPE_12__ {scalar_t__ portguid; int lid; int portnum; } ;
typedef TYPE_1__ Port ;
typedef TYPE_2__ Node ;


 int VERBOSE (char*,int,TYPE_2__*,int ,int ) ;
 int dump_endnode (int ,char*,TYPE_2__*,TYPE_1__*) ;
 int ibverbose ;
 scalar_t__ insert_node (TYPE_2__*) ;
 int link_port (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__** nodesdist ;
 scalar_t__ target_portguid ;

__attribute__((used)) static int new_node(Node * node, Port * port, ib_portid_t * path, int dist)
{
 if (port->portguid == target_portguid) {
  node->dist = -1;
  link_port(port, node);
  dump_endnode(ibverbose, "found target", node, port);
  return 1;
 }


 if (insert_node(node) < 0)
  return -1;

 VERBOSE("insert dist %d node %p port %d lid %d", dist, node,
  port->portnum, port->lid);

 link_port(port, node);

 node->dist = dist;
 node->path = *path;
 node->dnext = nodesdist[dist];
 nodesdist[dist] = node;

 return 0;
}
