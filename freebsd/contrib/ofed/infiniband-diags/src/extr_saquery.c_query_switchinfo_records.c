
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int swir ;
struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;
struct query_cmd {int dummy; } ;
struct TYPE_4__ {int lid; } ;
typedef TYPE_1__ ib_switch_info_record_t ;
typedef int ib_net64_t ;


 int CHECK_AND_SET_VAL (int,int,int ,int ,int ,int ) ;
 int IB_SA_ATTR_SWITCHINFORECORD ;
 int LID ;
 int SWIR ;
 int dump_switch_info_record ;
 int get_and_dump_any_records (struct sa_handle*,int ,int ,int ,TYPE_1__*,int,int ,struct query_params*) ;
 int memset (TYPE_1__*,int ,int) ;
 int parse_lid_and_ports (struct sa_handle*,char*,int*,int *,int *) ;

__attribute__((used)) static int query_switchinfo_records(const struct query_cmd *q,
    struct sa_handle * h, struct query_params *p,
    int argc, char *argv[])
{
 ib_switch_info_record_t swir;
 ib_net64_t comp_mask = 0;
 int lid = 0;

 if (argc > 0)
  parse_lid_and_ports(h, argv[0], &lid, ((void*)0), ((void*)0));

 memset(&swir, 0, sizeof(swir));
 CHECK_AND_SET_VAL(lid, 16, 0, swir.lid, SWIR, LID);

 return get_and_dump_any_records(h, IB_SA_ATTR_SWITCHINFORECORD, 0,
     comp_mask, &swir, sizeof(swir),
     dump_switch_info_record, p);
}
