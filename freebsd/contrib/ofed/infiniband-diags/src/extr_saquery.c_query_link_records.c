
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;
struct query_cmd {int dummy; } ;
typedef int lr ;
typedef int ib_net64_t ;
struct TYPE_4__ {int to_port_num; int to_lid; int from_port_num; int from_lid; } ;
typedef TYPE_1__ ib_link_record_t ;


 int CHECK_AND_SET_VAL (int,int,int,int ,int ,int ) ;
 int FROM_LID ;
 int FROM_PORT ;
 int IB_SA_ATTR_LINKRECORD ;
 int LR ;
 int TO_LID ;
 int TO_PORT ;
 int dump_one_link_record ;
 int get_and_dump_any_records (struct sa_handle*,int ,int ,int ,TYPE_1__*,int,int ,struct query_params*) ;
 int memset (TYPE_1__*,int ,int) ;
 int parse_lid_and_ports (struct sa_handle*,char*,int*,int*,int *) ;

__attribute__((used)) static int query_link_records(const struct query_cmd *q, struct sa_handle * h,
         struct query_params *p, int argc, char *argv[])
{
 ib_link_record_t lr;
 ib_net64_t comp_mask = 0;
 int from_lid = 0, to_lid = 0, from_port = -1, to_port = -1;

 if (argc > 0)
  parse_lid_and_ports(h, argv[0], &from_lid, &from_port, ((void*)0));

 if (argc > 1)
  parse_lid_and_ports(h, argv[1], &to_lid, &to_port, ((void*)0));

 memset(&lr, 0, sizeof(lr));
 CHECK_AND_SET_VAL(from_lid, 16, 0, lr.from_lid, LR, FROM_LID);
 CHECK_AND_SET_VAL(from_port, 8, -1, lr.from_port_num, LR, FROM_PORT);
 CHECK_AND_SET_VAL(to_lid, 16, 0, lr.to_lid, LR, TO_LID);
 CHECK_AND_SET_VAL(to_port, 8, -1, lr.to_port_num, LR, TO_PORT);

 return get_and_dump_any_records(h, IB_SA_ATTR_LINKRECORD, 0, comp_mask,
     &lr, sizeof(lr), dump_one_link_record, p);
}
