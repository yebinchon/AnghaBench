
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct query_params {int dummy; } ;
struct TYPE_3__ {int * pkey_entry; } ;
struct TYPE_4__ {int port_num; int block_num; int lid; TYPE_1__ pkey_tbl; } ;
typedef TYPE_2__ ib_pkey_table_record_t ;
typedef int ib_net16_t ;


 int cl_ntoh16 (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void dump_one_pkey_tbl_record(void *data, struct query_params *params)
{
 ib_pkey_table_record_t *pktr = data;
 ib_net16_t *p = pktr->pkey_tbl.pkey_entry;
 int i;
 printf("PKeyTableRecord dump:\n"
        "\t\tLID........................%u\n"
        "\t\tPort.......................%u\n"
        "\t\tBlock......................%u\n"
        "\t\tPKey Table:\n",
        cl_ntoh16(pktr->lid), pktr->port_num, pktr->block_num);
 for (i = 0; i < 32; i += 8)
  printf("\t\t0x%04x 0x%04x 0x%04x 0x%04x"
         " 0x%04x 0x%04x 0x%04x 0x%04x\n",
         cl_ntoh16(p[i + 0]), cl_ntoh16(p[i + 1]),
         cl_ntoh16(p[i + 2]), cl_ntoh16(p[i + 3]),
         cl_ntoh16(p[i + 4]), cl_ntoh16(p[i + 5]),
         cl_ntoh16(p[i + 6]), cl_ntoh16(p[i + 7]));
 printf("\n");
}
