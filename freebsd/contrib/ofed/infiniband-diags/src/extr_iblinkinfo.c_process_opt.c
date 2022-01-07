
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ibnd_config {void* max_smps; void* max_hops; } ;


 int DIFF_FLAG_LID ;
 int DIFF_FLAG_NODE_DESCRIPTION ;
 int DIFF_FLAG_PORT_CONNECTION ;
 int DIFF_FLAG_PORT_STATE ;
 int IB_NODE_CA ;
 int IB_NODE_SWITCH ;
 int add_sw_settings ;
 int all ;
 void* diff_cache_file ;
 int diffcheck_flags ;
 int down_links_only ;
 void* dr_path ;
 void* filterdownports_cache_file ;
 int fprintf (int ,char*,char*) ;
 int guid ;
 char* guid_str ;
 int line_mode ;
 void* load_cache_file ;
 void* node_name_map_file ;
 int only_flag ;
 int only_type ;
 int stderr ;
 int strcasecmp (char*,char*) ;
 void* strdup (char*) ;
 char* strtok (char*,char*) ;
 void* strtoul (char*,int *,int ) ;
 int strtoull (char*,int ,int ) ;

__attribute__((used)) static int process_opt(void *context, int ch, char *optarg)
{
 struct ibnd_config *cfg = context;
 char *p;

 switch (ch) {
 case 1:
  node_name_map_file = strdup(optarg);
  break;
 case 2:
  load_cache_file = strdup(optarg);
  break;
 case 3:
  diff_cache_file = strdup(optarg);
  break;
 case 4:
  diffcheck_flags = 0;
  p = strtok(optarg, ",");
  while (p) {
   if (!strcasecmp(p, "port"))
    diffcheck_flags |= DIFF_FLAG_PORT_CONNECTION;
   else if (!strcasecmp(p, "state"))
    diffcheck_flags |= DIFF_FLAG_PORT_STATE;
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
 case 5:
  filterdownports_cache_file = strdup(optarg);
  break;
 case 6:
  only_flag = 1;
  only_type = IB_NODE_SWITCH;
  break;
 case 7:
  only_flag = 1;
  only_type = IB_NODE_CA;
  break;
 case 'S':
 case 'G':
  guid_str = optarg;
  guid = (uint64_t) strtoull(guid_str, 0, 0);
  break;
 case 'D':
  dr_path = strdup(optarg);
  break;
 case 'a':
  all = 1;
  break;
 case 'n':
  cfg->max_hops = strtoul(optarg, ((void*)0), 0);
  break;
 case 'd':
  down_links_only = 1;
  break;
 case 'l':
  line_mode = 1;
  break;
 case 'p':
  add_sw_settings = 1;
  break;
 case 'R':
  break;
 case 'o':
  cfg->max_smps = strtoul(optarg, ((void*)0), 0);
  break;
 default:
  return -1;
 }

 return 0;
}
