
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;
struct query_cmd {int dummy; } ;
typedef int nr ;
struct TYPE_4__ {int lid; } ;
typedef TYPE_1__ ib_node_record_t ;
typedef int ib_net64_t ;


 int CHECK_AND_SET_VAL (int,int,int ,int ,int ,int ) ;
 int IB_SA_ATTR_NODERECORD ;
 int LID ;
 int NR ;
 int dump_node_record ;
 int get_and_dump_any_records (struct sa_handle*,int ,int ,int ,TYPE_1__*,int,int ,struct query_params*) ;
 int memset (TYPE_1__*,int ,int) ;
 int parse_lid_and_ports (struct sa_handle*,char*,int*,int *,int *) ;

__attribute__((used)) static int query_node_records(const struct query_cmd *q, struct sa_handle * h,
         struct query_params *p, int argc, char *argv[])
{
 ib_node_record_t nr;
 ib_net64_t comp_mask = 0;
 int lid = 0;

 if (argc > 0)
  parse_lid_and_ports(h, argv[0], &lid, ((void*)0), ((void*)0));

 memset(&nr, 0, sizeof(nr));
 CHECK_AND_SET_VAL(lid, 16, 0, nr.lid, NR, LID);

 return get_and_dump_any_records(h, IB_SA_ATTR_NODERECORD, 0, comp_mask,
     &nr, sizeof(nr), dump_node_record, p);
}
