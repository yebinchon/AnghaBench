
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlarb ;
struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;
struct query_cmd {int dummy; } ;
struct TYPE_4__ {int block_num; int port_num; int lid; } ;
typedef TYPE_1__ ib_vl_arb_table_record_t ;
typedef int ib_net64_t ;


 int BLOCK ;
 int CHECK_AND_SET_VAL (int,int,int,int ,int ,int ) ;
 int IB_SA_ATTR_VLARBTABLERECORD ;
 int LID ;
 int OUT_PORT ;
 int VLA ;
 int dump_one_vlarb_record ;
 int get_and_dump_any_records (struct sa_handle*,int ,int ,int ,TYPE_1__*,int,int ,struct query_params*) ;
 int memset (TYPE_1__*,int ,int) ;
 int parse_lid_and_ports (struct sa_handle*,char*,int*,int*,int*) ;

__attribute__((used)) static int query_vlarb_records(const struct query_cmd *q, struct sa_handle * h,
          struct query_params *p, int argc, char *argv[])
{
 ib_vl_arb_table_record_t vlarb;
 ib_net64_t comp_mask = 0;
 int lid = 0, port = -1, block = -1;

 if (argc > 0)
  parse_lid_and_ports(h, argv[0], &lid, &port, &block);

 memset(&vlarb, 0, sizeof(vlarb));
 CHECK_AND_SET_VAL(lid, 16, 0, vlarb.lid, VLA, LID);
 CHECK_AND_SET_VAL(port, 8, -1, vlarb.port_num, VLA, OUT_PORT);
 CHECK_AND_SET_VAL(block, 8, -1, vlarb.block_num, VLA, BLOCK);

 return get_and_dump_any_records(h, IB_SA_ATTR_VLARBTABLERECORD, 0,
     comp_mask, &vlarb, sizeof(vlarb),
     dump_one_vlarb_record, p);
}
