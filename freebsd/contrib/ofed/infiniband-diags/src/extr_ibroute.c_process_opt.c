
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int brief ;
 int dump_all ;
 int multicast ;
 int node_name_map_file ;
 int strdup (char*) ;

__attribute__((used)) static int process_opt(void *context, int ch, char *optarg)
{
 switch (ch) {
 case 'a':
  dump_all++;
  break;
 case 'M':
  multicast++;
  break;
 case 'n':
  brief++;
  break;
 case 1:
  node_name_map_file = strdup(optarg);
  break;
 default:
  return -1;
 }
 return 0;
}
