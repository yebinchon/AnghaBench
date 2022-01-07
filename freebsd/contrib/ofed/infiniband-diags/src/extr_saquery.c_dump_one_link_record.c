
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct query_params {int dummy; } ;
struct TYPE_2__ {int from_port_num; int to_port_num; int to_lid; int from_lid; } ;
typedef TYPE_1__ ib_link_record_t ;


 int cl_ntoh16 (int ) ;
 int printf (char*,int,int,int,int) ;

__attribute__((used)) static void dump_one_link_record(void *data, struct query_params *p)
{
 ib_link_record_t *lr = data;
 printf("LinkRecord dump:\n"
        "\t\tFromLID....................%u\n"
        "\t\tFromPort...................%u\n"
        "\t\tToPort.....................%u\n"
        "\t\tToLID......................%u\n",
        cl_ntoh16(lr->from_lid), lr->from_port_num,
        lr->to_port_num, cl_ntoh16(lr->to_lid));
}
