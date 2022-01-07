
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa_query_result {int dummy; } ;
struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;


 int IB_PORT_CAP_IS_SM ;
 int IB_PORT_CAP_SM_DISAB ;
 int dump_portinfo_record ;
 int dump_results (struct sa_query_result*,int ,struct query_params*) ;
 int get_issm_records (struct sa_handle*,int ,struct sa_query_result*) ;
 int printf (char*) ;
 int sa_free_result_mad (struct sa_query_result*) ;

__attribute__((used)) static int print_issm_records(struct sa_handle * h, struct query_params *p)
{
 struct sa_query_result result;
 int ret = 0;


 ret = get_issm_records(h, IB_PORT_CAP_IS_SM, &result);
 if (ret != 0)
  return (ret);

 printf("IsSM ports\n");
 dump_results(&result, dump_portinfo_record, p);
 sa_free_result_mad(&result);


 ret = get_issm_records(h, IB_PORT_CAP_SM_DISAB, &result);
 if (ret != 0)
  return (ret);

 printf("\nIsSMdisabled ports\n");
 dump_results(&result, dump_portinfo_record, p);
 sa_free_result_mad(&result);

 return (ret);
}
