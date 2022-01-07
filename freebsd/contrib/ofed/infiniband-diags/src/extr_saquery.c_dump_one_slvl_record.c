
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct query_params {int dummy; } ;
typedef int ib_slvl_table_t ;
struct TYPE_2__ {int in_port_num; int out_port_num; int lid; int slvl_tbl; } ;
typedef TYPE_1__ ib_slvl_table_record_t ;


 int cl_ntoh16 (int ) ;
 int ib_slvl_table_get (int *,int) ;
 int printf (char*,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static void dump_one_slvl_record(void *data, struct query_params *p)
{
 ib_slvl_table_record_t *slvl = data;
 ib_slvl_table_t *t = &slvl->slvl_tbl;
 printf("SL2VLTableRecord dump:\n"
        "\t\tLID........................%u\n"
        "\t\tInPort.....................%u\n"
        "\t\tOutPort....................%u\n"
        "\t\tSL: 0| 1| 2| 3| 4| 5| 6| 7| 8| 9|10|11|12|13|14|15|\n"
        "\t\tVL:%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u"
        "|%2u|%2u|%2u|\n",
        cl_ntoh16(slvl->lid), slvl->in_port_num, slvl->out_port_num,
        ib_slvl_table_get(t, 0), ib_slvl_table_get(t, 1),
        ib_slvl_table_get(t, 2), ib_slvl_table_get(t, 3),
        ib_slvl_table_get(t, 4), ib_slvl_table_get(t, 5),
        ib_slvl_table_get(t, 6), ib_slvl_table_get(t, 7),
        ib_slvl_table_get(t, 8), ib_slvl_table_get(t, 9),
        ib_slvl_table_get(t, 10), ib_slvl_table_get(t, 11),
        ib_slvl_table_get(t, 12), ib_slvl_table_get(t, 13),
        ib_slvl_table_get(t, 14), ib_slvl_table_get(t, 15));
}
