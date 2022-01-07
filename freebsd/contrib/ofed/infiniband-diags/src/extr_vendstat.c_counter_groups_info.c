
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_of_counter_groups; int * group_masks; } ;
typedef TYPE_1__ is4_counter_group_info_t ;
typedef int ib_portid_t ;
typedef int buf ;


 int IB_MAD_METHOD_GET ;
 int IB_MLX_IS4_COUNTER_GROUP_INFO ;
 int IB_MLX_VENDOR_CLASS ;
 scalar_t__ do_vendor (int *,int ,int ,int ,int ,int,char*) ;
 int fprintf (int ,char*) ;
 int memset (char**,int ,int) ;
 int ntohl (int ) ;
 int printf (char*,...) ;
 int srcport ;
 int stderr ;

__attribute__((used)) static int counter_groups_info(ib_portid_t * portid, int port)
{
 char buf[1024];
 is4_counter_group_info_t *cg_info;
 int i, num_cg;


 memset(&buf, 0, sizeof(buf));
 if (do_vendor(portid, srcport, IB_MLX_VENDOR_CLASS, IB_MAD_METHOD_GET,
        IB_MLX_IS4_COUNTER_GROUP_INFO, port, buf)) {
  fprintf(stderr,"counter group info query failure\n");
  return -1;
 }
 cg_info = (is4_counter_group_info_t *) & buf;
 num_cg = cg_info->num_of_counter_groups;
 printf("counter_group_info:\n");
 printf("%d counter groups\n", num_cg);
 for (i = 0; i < num_cg; i++)
  printf("group%d mask %#x\n", i, ntohl(cg_info->group_masks[i]));
 return 0;
}
