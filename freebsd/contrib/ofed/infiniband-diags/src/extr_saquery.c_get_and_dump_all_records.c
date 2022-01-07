
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sa_query_result {int dummy; } ;
struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;


 int dump_results (struct sa_query_result*,void (*) (void*,struct query_params*),struct query_params*) ;
 int get_all_records (struct sa_handle*,int ,struct sa_query_result*) ;
 int sa_free_result_mad (struct sa_query_result*) ;

__attribute__((used)) static int get_and_dump_all_records(struct sa_handle * h, uint16_t attr_id,
        void (*dump_func) (void *,
             struct query_params *p),
        struct query_params *p)
{
 struct sa_query_result result;
 int ret = get_all_records(h, attr_id, &result);
 if (ret)
  return ret;

 dump_results(&result, dump_func, p);
 sa_free_result_mad(&result);
 return ret;
}
