
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int num_ops; TYPE_1__* ops; } ;
typedef TYPE_2__ svn_txdelta_window_t ;
struct TYPE_8__ {int length; void** offs; } ;
typedef TYPE_3__ offset_index_t ;
typedef void* apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {scalar_t__ length; } ;


 void* apr_palloc (int *,int) ;

__attribute__((used)) static offset_index_t *
create_offset_index(const svn_txdelta_window_t *window, apr_pool_t *pool)
{
  offset_index_t *ndx = apr_palloc(pool, sizeof(*ndx));
  apr_size_t offset = 0;
  int i;

  ndx->length = window->num_ops;
  ndx->offs = apr_palloc(pool, (ndx->length + 1) * sizeof(*ndx->offs));

  for (i = 0; i < ndx->length; ++i)
    {
      ndx->offs[i] = offset;
      offset += window->ops[i].length;
    }
  ndx->offs[ndx->length] = offset;

  return ndx;
}
