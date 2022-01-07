
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct query_params {int dummy; } ;
struct TYPE_2__ {int* lft; int lid; int block_num; } ;
typedef TYPE_1__ ib_lft_record_t ;


 int cl_ntoh16 (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void dump_one_lft_record(void *data, struct query_params *p)
{
 ib_lft_record_t *lftr = data;
 unsigned block = cl_ntoh16(lftr->block_num);
 int i;
 printf("LFT Record dump:\n"
        "\t\tLID........................%u\n"
        "\t\tBlock......................%u\n"
        "\t\tLFT:\n\t\tLID\tPort Number\n", cl_ntoh16(lftr->lid), block);
 for (i = 0; i < 64; i++)
  printf("\t\t%u\t%u\n", block * 64 + i, lftr->lft[i]);
 printf("\n");
}
