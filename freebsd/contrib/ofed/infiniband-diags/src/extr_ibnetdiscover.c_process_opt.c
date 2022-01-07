
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibnd_config {int show_progress; int max_smps; } ;


 int DIFF_FLAG_CA ;
 int DIFF_FLAG_LID ;
 int DIFF_FLAG_NODE_DESCRIPTION ;
 int DIFF_FLAG_PORT_CONNECTION ;
 int DIFF_FLAG_ROUTER ;
 int DIFF_FLAG_SWITCH ;
 int LIST_CA_NODE ;
 int LIST_ROUTER_NODE ;
 int LIST_SWITCH_NODE ;
 void* cache_file ;
 void* diff_cache_file ;
 int diffcheck_flags ;
 int fprintf (int ,char*,char*) ;
 int full_info ;
 int group ;
 int list ;
 void* load_cache_file ;
 void* node_name_map_file ;
 int ports_report ;
 int report_max_hops ;
 int stderr ;
 int strcasecmp (char*,char*) ;
 void* strdup (char*) ;
 char* strtok (char*,char*) ;
 int strtoul (char*,int *,int ) ;

__attribute__((used)) static int process_opt(void *context, int ch, char *optarg)
{
 struct ibnd_config *cfg = context;
 char *p;

 switch (ch) {
 case 1:
  node_name_map_file = strdup(optarg);
  break;
 case 2:
  cache_file = strdup(optarg);
  break;
 case 3:
  load_cache_file = strdup(optarg);
  break;
 case 4:
  diff_cache_file = strdup(optarg);
  break;
 case 5:
  diffcheck_flags = 0;
  p = strtok(optarg, ",");
  while (p) {
   if (!strcasecmp(p, "sw"))
    diffcheck_flags |= DIFF_FLAG_SWITCH;
   else if (!strcasecmp(p, "ca"))
    diffcheck_flags |= DIFF_FLAG_CA;
   else if (!strcasecmp(p, "router"))
    diffcheck_flags |= DIFF_FLAG_ROUTER;
   else if (!strcasecmp(p, "port"))
    diffcheck_flags |= DIFF_FLAG_PORT_CONNECTION;
   else if (!strcasecmp(p, "lid"))
    diffcheck_flags |= DIFF_FLAG_LID;
   else if (!strcasecmp(p, "nodedesc"))
    diffcheck_flags |= DIFF_FLAG_NODE_DESCRIPTION;
   else {
    fprintf(stderr, "invalid diff check key: %s\n",
     p);
    return -1;
   }
   p = strtok(((void*)0), ",");
  }
  break;
 case 's':
  cfg->show_progress = 1;
  break;
 case 'f':
  full_info = 1;
  break;
 case 'l':
  list = LIST_CA_NODE | LIST_SWITCH_NODE | LIST_ROUTER_NODE;
  break;
 case 'g':
  group = 1;
  break;
 case 'S':
  list = LIST_SWITCH_NODE;
  break;
 case 'H':
  list = LIST_CA_NODE;
  break;
 case 'R':
  list = LIST_ROUTER_NODE;
  break;
 case 'p':
  ports_report = 1;
  break;
 case 'm':
  report_max_hops = 1;
  break;
 case 'o':
  cfg->max_smps = strtoul(optarg, ((void*)0), 0);
  break;
 default:
  return -1;
 }

 return 0;
}
