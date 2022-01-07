
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lossy_set ;
 int mirror_clear ;
 void* mirror_dlid ;
 void* mirror_dport ;
 int mirror_query ;
 void* mirror_sl ;
 int mrx_ports ;
 int mtx_ports ;
 void* packet_size ;
 int parse_ports (char*,int ) ;
 int set_mrx ;
 int set_mtx ;
 void* strtoul (char*,int *,int ) ;

__attribute__((used)) static int process_opt(void *context, int ch, char *optarg)
{
 switch (ch) {
 case 'p':
  mirror_dport = strtoul(optarg, ((void*)0), 0);
  break;
 case 'S':
  packet_size = strtoul(optarg, ((void*)0), 0);
  break;
 case 'l':
  mirror_sl = strtoul(optarg, ((void*)0), 0);
  break;
 case 'L':
  mirror_dlid = strtoul(optarg, ((void*)0), 0);
  break;
 case 'R':
  set_mrx = 1;
  if (-1 == parse_ports(optarg, mrx_ports))
   return -1;
  break;
 case 'T':
  set_mtx = 1;
  if (-1 == parse_ports(optarg, mtx_ports))
   return -1;
  break;
 case 'D':
  mirror_clear = 1;
  break;
 case 'Q':
  mirror_query = 1;
  break;
 case 'y':
  lossy_set = 1;
  break;
 default:
  return -1;
 }
 return 0;
}
