
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;
struct query_cmd {int dummy; } ;


 int IB_SA_ATTR_SERVICERECORD ;
 int dump_service_record ;
 int get_and_dump_all_records (struct sa_handle*,int ,int ,struct query_params*) ;

__attribute__((used)) static int query_service_records(const struct query_cmd *q, struct sa_handle * h,
     struct query_params *p, int argc, char *argv[])
{
 return get_and_dump_all_records(h, IB_SA_ATTR_SERVICERECORD,
     dump_service_record, p);
}
