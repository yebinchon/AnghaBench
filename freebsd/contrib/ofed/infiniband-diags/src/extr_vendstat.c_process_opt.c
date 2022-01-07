
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* record; } ;
struct TYPE_7__ {TYPE_2__* record; } ;
struct TYPE_6__ {int mask; int data; int address; } ;
struct TYPE_5__ {int mask; int address; } ;


 int AF_INET6 ;
 int cg0 ;
 int cg1 ;
 int config_counter_group ;
 int counter_group_info ;
 int dgid ;
 int fprintf (int ,char*) ;
 int general_info ;
 int ibdiag_show_usage () ;
 int inet_pton (int ,char*,int *) ;
 TYPE_4__ read_cs ;
 int read_cs_records ;
 int sscanf (char*,char*,int *,int*,...) ;
 int stderr ;
 int with_grh ;
 TYPE_3__ write_cs ;
 int write_cs_records ;
 int xmit_wait ;

__attribute__((used)) static int process_opt(void *context, int ch, char *optarg)
{
 int ret;
 switch (ch) {
 case 'N':
  general_info = 1;
  break;
 case 'w':
  xmit_wait = 1;
  break;
 case 'i':
  counter_group_info = 1;
  break;
 case 'c':
  config_counter_group = 1;
  ret = sscanf(optarg, "%d,%d", &cg0, &cg1);
  if (ret != 2)
   return -1;
  break;
 case 'R':
  if (read_cs_records >= 18)
   break;
  ret = sscanf(optarg, "%x,%x",
        &read_cs.record[read_cs_records].address,
        &read_cs.record[read_cs_records].mask);
  if (ret < 1)
   return -1;
  else if (ret == 1)
   read_cs.record[read_cs_records].mask = 0xffffffff;
  read_cs_records++;
  break;
 case 'W':
  if (write_cs_records >= 18)
   break;
  ret = sscanf(optarg, "%x,%x,%x",
        &write_cs.record[write_cs_records].address,
        &write_cs.record[write_cs_records].data,
        &write_cs.record[write_cs_records].mask);
  if (ret < 2)
   return -1;
  else if (ret == 2)
   write_cs.record[write_cs_records].mask = 0xffffffff;
  write_cs_records++;
  break;
 case 25:
  if (!inet_pton(AF_INET6, optarg, &dgid)) {
   fprintf(stderr, "dgid format is wrong!\n");
   ibdiag_show_usage();
   return 1;
  }
  with_grh = 1;
  break;
 default:
  return -1;
 }
 return 0;
}
