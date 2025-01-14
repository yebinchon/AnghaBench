
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct sa_query_result {int dummy; } ;
struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;
typedef int ib_net64_t ;


 int dump_results (struct sa_query_result*,void (*) (void*,struct query_params*),struct query_params*) ;
 int get_any_records (struct sa_handle*,int ,int ,int ,void*,size_t,struct sa_query_result*) ;
 int sa_free_result_mad (struct sa_query_result*) ;

__attribute__((used)) static int get_and_dump_any_records(struct sa_handle * h, uint16_t attr_id,
        uint32_t attr_mod, ib_net64_t comp_mask,
        void *attr,
        size_t attr_size,
        void (*dump_func) (void *,
                 struct query_params *),
        struct query_params *p)
{
 struct sa_query_result result;
 int ret = get_any_records(h, attr_id, attr_mod, comp_mask, attr,
      attr_size, &result);
 if (ret)
  return ret;

 dump_results(&result, dump_func, p);
 sa_free_result_mad(&result);
 return 0;
}
