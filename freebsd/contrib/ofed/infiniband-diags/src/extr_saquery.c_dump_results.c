
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa_query_result {unsigned int result_cnt; int p_result_madw; } ;
struct query_params {int dummy; } ;


 void* sa_get_query_rec (int ,unsigned int) ;

__attribute__((used)) static void dump_results(struct sa_query_result *r,
    void (*dump_func) (void *, struct query_params *),
    struct query_params *p)
{
 unsigned i;
 for (i = 0; i < r->result_cnt; i++) {
  void *data = sa_get_query_rec(r->p_result_madw, i);
  dump_func(data, p);
 }
}
