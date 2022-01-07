
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;
struct query_cmd {int dummy; } ;
typedef int lftr ;
typedef int ib_net64_t ;
struct TYPE_4__ {int block_num; int lid; } ;
typedef TYPE_1__ ib_lft_record_t ;


 int BLOCK ;
 int CHECK_AND_SET_VAL (int,int,int,int ,int ,int ) ;
 int IB_SA_ATTR_LFTRECORD ;
 int LFTR ;
 int LID ;
 int dump_one_lft_record ;
 int get_and_dump_any_records (struct sa_handle*,int ,int ,int ,TYPE_1__*,int,int ,struct query_params*) ;
 int memset (TYPE_1__*,int ,int) ;
 int parse_lid_and_ports (struct sa_handle*,char*,int*,int*,int *) ;

__attribute__((used)) static int query_lft_records(const struct query_cmd *q, struct sa_handle * h,
        struct query_params *p, int argc, char *argv[])
{
 ib_lft_record_t lftr;
 ib_net64_t comp_mask = 0;
 int lid = 0, block = -1;

 if (argc > 0)
  parse_lid_and_ports(h, argv[0], &lid, &block, ((void*)0));

 memset(&lftr, 0, sizeof(lftr));
 CHECK_AND_SET_VAL(lid, 16, 0, lftr.lid, LFTR, LID);
 CHECK_AND_SET_VAL(block, 16, -1, lftr.block_num, LFTR, BLOCK);

 return get_and_dump_any_records(h, IB_SA_ATTR_LFTRECORD, 0, comp_mask,
     &lftr, sizeof(lftr), dump_one_lft_record, p);
}
