
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numports; int smalid; int smalmc; scalar_t__ smaenhsp0; int nodedesc; int guid; } ;
typedef TYPE_1__ ibnd_node_t ;


 int f ;
 int fprintf (int ,char*,char*,int,char*,char*,char*,int,int) ;
 int free (char*) ;
 char* node_name (TYPE_1__*) ;
 int node_name_map ;
 char* remap_node_name (int ,int ,int ) ;

void out_switch_detail(ibnd_node_t * node, char *sw_prefix)
{
 char *nodename = ((void*)0);

 nodename = remap_node_name(node_name_map, node->guid, node->nodedesc);

 fprintf(f, "%sSwitch\t%d %s\t\t# \"%s\" %s port 0 lid %d lmc %d",
  sw_prefix ? sw_prefix : "", node->numports, node_name(node),
  nodename, node->smaenhsp0 ? "enhanced" : "base",
  node->smalid, node->smalmc);

 free(nodename);
}
