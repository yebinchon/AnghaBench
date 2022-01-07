
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dumplevel ;
 int force ;
 int mlid ;
 int multicast ;
 int node_name_map_file ;
 int strdup (char*) ;
 int strtoul (char*,int ,int ) ;

__attribute__((used)) static int process_opt(void *context, int ch, char *optarg)
{
 switch (ch) {
 case 1:
  node_name_map_file = strdup(optarg);
  break;
 case 'm':
  multicast++;
  mlid = strtoul(optarg, 0, 0);
  break;
 case 'f':
  force++;
  break;
 case 'n':
  dumplevel = 1;
  break;
 default:
  return -1;
 }
 return 0;
}
