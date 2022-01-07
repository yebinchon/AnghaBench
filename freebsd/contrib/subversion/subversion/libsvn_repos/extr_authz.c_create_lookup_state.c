
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int node_t ;
struct TYPE_4__ {void* parent_path; void* scratch_pad; void* current; void* next; } ;
typedef TYPE_1__ lookup_state_t ;
typedef int apr_pool_t ;


 void* apr_array_make (int *,int,int) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 void* svn_stringbuf_create_ensure (int,int *) ;

__attribute__((used)) static lookup_state_t *
create_lookup_state(apr_pool_t *result_pool)
{
  lookup_state_t *state = apr_pcalloc(result_pool, sizeof(*state));

  state->next = apr_array_make(result_pool, 4, sizeof(node_t *));
  state->current = apr_array_make(result_pool, 4, sizeof(node_t *));







  state->scratch_pad = svn_stringbuf_create_ensure(200, result_pool);



  state->parent_path = svn_stringbuf_create_ensure(200, result_pool);

  return state;
}
