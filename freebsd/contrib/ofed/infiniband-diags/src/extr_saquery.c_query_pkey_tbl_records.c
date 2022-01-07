
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;
struct query_cmd {int dummy; } ;
typedef int pktr ;
struct TYPE_4__ {int block_num; int port_num; int lid; } ;
typedef TYPE_1__ ib_pkey_table_record_t ;
typedef int ib_net64_t ;


 int BLOCK ;
 int CHECK_AND_SET_VAL (int,int,int,int ,int ,int ) ;
 int IB_SA_ATTR_PKEYTABLERECORD ;
 int LID ;
 int PKEY ;
 int PORT ;
 int dump_one_pkey_tbl_record ;
 int get_and_dump_any_records (struct sa_handle*,int ,int ,int ,TYPE_1__*,int,int ,struct query_params*) ;
 int memset (TYPE_1__*,int ,int) ;
 int parse_lid_and_ports (struct sa_handle*,char*,int*,int*,int*) ;

__attribute__((used)) static int query_pkey_tbl_records(const struct query_cmd *q,
      struct sa_handle * h, struct query_params *p,
      int argc, char *argv[])
{
 ib_pkey_table_record_t pktr;
 ib_net64_t comp_mask = 0;
 int lid = 0, port = -1, block = -1;

 if (argc > 0)
  parse_lid_and_ports(h, argv[0], &lid, &port, &block);

 memset(&pktr, 0, sizeof(pktr));
 CHECK_AND_SET_VAL(lid, 16, 0, pktr.lid, PKEY, LID);
 CHECK_AND_SET_VAL(port, 8, -1, pktr.port_num, PKEY, PORT);
 CHECK_AND_SET_VAL(block, 16, -1, pktr.block_num, PKEY, BLOCK);

 return get_and_dump_any_records(h, IB_SA_ATTR_PKEYTABLERECORD, 0,
     comp_mask, &pktr, sizeof(pktr),
     dump_one_pkey_tbl_record, p);
}
