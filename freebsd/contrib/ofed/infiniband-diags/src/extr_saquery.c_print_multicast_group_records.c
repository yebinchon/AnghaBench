
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;


 int IB_SA_ATTR_MCRECORD ;
 int dump_multicast_group_record ;
 int get_and_dump_all_records (struct sa_handle*,int ,int ,struct query_params*) ;

__attribute__((used)) static int print_multicast_group_records(struct sa_handle * h,
      struct query_params *p)
{
 return get_and_dump_all_records(h, IB_SA_ATTR_MCRECORD,
     dump_multicast_group_record, p);
}
