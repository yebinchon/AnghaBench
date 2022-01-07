
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,...) ;

void mad_dump_node_type(char *buf, int bufsz, void *val, int valsz)
{
 int nodetype = *(int *)val;

 switch (nodetype) {
 case 1:
  snprintf(buf, bufsz, "Channel Adapter");
  break;
 case 2:
  snprintf(buf, bufsz, "Switch");
  break;
 case 3:
  snprintf(buf, bufsz, "Router");
  break;
 default:
  snprintf(buf, bufsz, "?(%d)?", nodetype);
  break;
 }
}
