
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * node; int * next; } ;
typedef TYPE_1__ sorted_pattern_t ;
typedef int node_t ;
typedef int authz_rule_segment_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {int nelts; } ;
typedef TYPE_2__ apr_array_header_t ;


 TYPE_2__* apr_array_make (int *,int,int) ;
 int compare_node_rule_segment ;
 int * create_node (int *,int *) ;
 int svn_sort__array_insert (TYPE_2__*,TYPE_1__*,int) ;
 TYPE_1__* svn_sort__array_lookup (TYPE_2__*,int *,int*,int ) ;

__attribute__((used)) static node_t *
ensure_node_in_array(apr_array_header_t **array,
                     authz_rule_segment_t *segment,
                     apr_pool_t *result_pool)
{
  int idx;
  sorted_pattern_t entry;
  sorted_pattern_t *entry_ptr;


  if (!*array)
    *array = apr_array_make(result_pool, 4, sizeof(sorted_pattern_t));




  idx = (*array)->nelts;
  entry_ptr = svn_sort__array_lookup(*array, segment, &idx,
                                     compare_node_rule_segment);
  if (entry_ptr)
    return entry_ptr->node;



  entry.node = create_node(segment, result_pool);
  entry.next = ((void*)0);
  svn_sort__array_insert(*array, &entry, idx);

  return entry.node;
}
