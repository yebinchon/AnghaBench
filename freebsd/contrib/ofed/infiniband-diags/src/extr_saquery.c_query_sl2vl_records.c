
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;
struct query_cmd {int dummy; } ;
typedef int slvl ;
struct TYPE_4__ {int out_port_num; int in_port_num; int lid; } ;
typedef TYPE_1__ ib_slvl_table_record_t ;
typedef int ib_net64_t ;


 int CHECK_AND_SET_VAL (int,int,int,int ,int ,int ) ;
 int IB_SA_ATTR_SL2VLTABLERECORD ;
 int IN_PORT ;
 int LID ;
 int OUT_PORT ;
 int SLVL ;
 int dump_one_slvl_record ;
 int get_and_dump_any_records (struct sa_handle*,int ,int ,int ,TYPE_1__*,int,int ,struct query_params*) ;
 int memset (TYPE_1__*,int ,int) ;
 int parse_lid_and_ports (struct sa_handle*,char*,int*,int*,int*) ;

__attribute__((used)) static int query_sl2vl_records(const struct query_cmd *q, struct sa_handle * h,
          struct query_params *p, int argc, char *argv[])
{
 ib_slvl_table_record_t slvl;
 ib_net64_t comp_mask = 0;
 int lid = 0, in_port = -1, out_port = -1;

 if (argc > 0)
  parse_lid_and_ports(h, argv[0], &lid, &in_port, &out_port);

 memset(&slvl, 0, sizeof(slvl));
 CHECK_AND_SET_VAL(lid, 16, 0, slvl.lid, SLVL, LID);
 CHECK_AND_SET_VAL(in_port, 8, -1, slvl.in_port_num, SLVL, IN_PORT);
 CHECK_AND_SET_VAL(out_port, 8, -1, slvl.out_port_num, SLVL, OUT_PORT);

 return get_and_dump_any_records(h, IB_SA_ATTR_SL2VLTABLERECORD, 0,
     comp_mask, &slvl, sizeof(slvl),
     dump_one_slvl_record, p);
}
