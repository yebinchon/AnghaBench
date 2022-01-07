
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int path_order_t ;
struct TYPE_5__ {TYPE_2__* path_order; int info_pool; TYPE_2__* references; } ;
typedef TYPE_1__ pack_context_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {scalar_t__ nelts; scalar_t__ elts; } ;


 int ** apr_pcalloc (int *,int) ;
 int assert (int) ;
 int classify_nodes (int **,int) ;
 scalar_t__ compare_path_order ;
 scalar_t__ compare_references ;
 int sort_reps_range (TYPE_1__*,int **,int **,int ,int) ;
 int * svn_pool_create (int ) ;
 int svn_pool_destroy (int *) ;
 int svn_sort__array (TYPE_2__*,int (*) (void const*,void const*)) ;

__attribute__((used)) static void
sort_reps(pack_context_t *context)
{
  apr_pool_t *temp_pool;
  path_order_t **temp, **path_order;
  int i, count;



  if (context->path_order->nelts == 0)
    {
      assert(context->references->nelts == 0);
      return;
    }



  svn_sort__array(context->path_order,
                  (int (*)(const void *, const void *))compare_path_order);
  svn_sort__array(context->references,
                  (int (*)(const void *, const void *))compare_references);




  temp_pool = svn_pool_create(context->info_pool);
  count = context->path_order->nelts;
  temp = apr_pcalloc(temp_pool, count * sizeof(*temp));
  path_order = (void *)context->path_order->elts;


  classify_nodes(path_order, count);


  sort_reps_range(context, path_order, temp, 0, count);


  for (i = 0; i < count; ++i)
    path_order[i] = temp[i];

  svn_pool_destroy(temp_pool);
}
