
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_txdelta_window_t ;
typedef int svn_error_t ;
struct delta_read_baton {TYPE_1__* rs; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {scalar_t__ current; scalar_t__ size; int chunk_index; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int read_delta_window (int **,int ,TYPE_1__*,int *,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
delta_read_next_window(svn_txdelta_window_t **window, void *baton,
                       apr_pool_t *pool)
{
  struct delta_read_baton *drb = baton;
  apr_pool_t *scratch_pool = svn_pool_create(pool);

  *window = ((void*)0);
  if (drb->rs->current < drb->rs->size)
    {
      SVN_ERR(read_delta_window(window, drb->rs->chunk_index, drb->rs, pool,
                                scratch_pool));
      drb->rs->chunk_index++;
    }

  svn_pool_destroy(scratch_pool);

  return SVN_NO_ERROR;
}
