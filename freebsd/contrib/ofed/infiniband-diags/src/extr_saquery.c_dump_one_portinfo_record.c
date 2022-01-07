
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct query_params {int dummy; } ;
struct TYPE_2__ {int port_num; int options; int lid; int port_info; } ;
typedef TYPE_1__ ib_portinfo_record_t ;
typedef int ib_port_info_t ;


 int cl_ntoh16 (int ) ;
 int dump_portinfo (int *,int) ;
 int printf (char*,int,int,int) ;

__attribute__((used)) static void dump_one_portinfo_record(void *data, struct query_params *p)
{
 ib_portinfo_record_t *pir = data;
 ib_port_info_t *pi = &pir->port_info;

 printf("PortInfoRecord dump:\n"
        "\tRID\n"
        "\t\tEndPortLid..............%u\n"
        "\t\tPortNum.................%u\n"
        "\t\tOptions.................0x%x\n"
        "\tPortInfo dump:\n",
        cl_ntoh16(pir->lid), pir->port_num, pir->options);
 dump_portinfo(pi, 2);
}
