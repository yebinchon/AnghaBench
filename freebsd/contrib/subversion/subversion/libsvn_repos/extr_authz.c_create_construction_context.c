
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int node_segment_pair_t ;
struct TYPE_4__ {int path; } ;
typedef TYPE_1__ construction_context_t ;
typedef int apr_pool_t ;


 int apr_array_make (int *,int,int) ;
 TYPE_1__* apr_pcalloc (int *,int) ;

__attribute__((used)) static construction_context_t *
create_construction_context(apr_pool_t *result_pool)
{
  construction_context_t *result = apr_pcalloc(result_pool, sizeof(*result));



  result->path = apr_array_make(result_pool, 32, sizeof(node_segment_pair_t));

  return result;
}
