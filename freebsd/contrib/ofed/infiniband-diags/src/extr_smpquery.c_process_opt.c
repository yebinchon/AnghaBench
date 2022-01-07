
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_DEST_DRSLID ;
 int extended_speeds ;
 int ibd_dest_type ;
 int node_name_map_file ;
 int strdup (char*) ;

__attribute__((used)) static int process_opt(void *context, int ch, char *optarg)
{
 switch (ch) {
 case 1:
  node_name_map_file = strdup(optarg);
  break;
 case 'c':
  ibd_dest_type = IB_DEST_DRSLID;
  break;
 case 'x':
  extended_speeds = 1;
  break;
 default:
  return -1;
 }
 return 0;
}
