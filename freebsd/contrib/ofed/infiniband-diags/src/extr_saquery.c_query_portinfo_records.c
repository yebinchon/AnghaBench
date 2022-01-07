
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;
struct query_cmd {int dummy; } ;
typedef int pir ;
struct TYPE_4__ {int options; int port_num; int lid; } ;
typedef TYPE_1__ ib_portinfo_record_t ;
typedef int ib_net64_t ;


 int CHECK_AND_SET_VAL (int,int,int,int ,int ,int ) ;
 int IB_SA_ATTR_PORTINFORECORD ;
 int LID ;
 int OPTIONS ;
 int PIR ;
 int PORTNUM ;
 int dump_one_portinfo_record ;
 int get_and_dump_any_records (struct sa_handle*,int ,int ,int ,TYPE_1__*,int,int ,struct query_params*) ;
 int memset (TYPE_1__*,int ,int) ;
 int parse_lid_and_ports (struct sa_handle*,char*,int*,int*,int*) ;

__attribute__((used)) static int query_portinfo_records(const struct query_cmd *q,
      struct sa_handle * h, struct query_params *p,
      int argc, char *argv[])
{
 ib_portinfo_record_t pir;
 ib_net64_t comp_mask = 0;
 int lid = 0, port = -1, options = -1;

 if (argc > 0)
  parse_lid_and_ports(h, argv[0], &lid, &port, &options);

 memset(&pir, 0, sizeof(pir));
 CHECK_AND_SET_VAL(lid, 16, 0, pir.lid, PIR, LID);
 CHECK_AND_SET_VAL(port, 8, -1, pir.port_num, PIR, PORTNUM);
 CHECK_AND_SET_VAL(options, 8, -1, pir.options, PIR, OPTIONS);

 return get_and_dump_any_records(h, IB_SA_ATTR_PORTINFORECORD, 0,
     comp_mask, &pir, sizeof(pir),
     dump_one_portinfo_record, p);
}
