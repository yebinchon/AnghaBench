
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_txdelta_window_t ;
struct TYPE_8__ {int chunk_index; int member_0; } ;
typedef TYPE_1__ svn_fs_x__window_cache_key_t ;
struct TYPE_9__ {int end_offset; int * window; } ;
typedef TYPE_2__ svn_fs_x__txdelta_cached_window_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_10__ {int chunk_index; int current; int window_cache; } ;
typedef TYPE_3__ rep_state_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_window_key (TYPE_1__*,TYPE_3__*) ;
 int svn_cache__get (void**,scalar_t__*,int ,TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
get_cached_window(svn_txdelta_window_t **window_p,
                  rep_state_t *rs,
                  int chunk_index,
                  svn_boolean_t *is_cached,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{

  svn_fs_x__txdelta_cached_window_t *cached_window;
  svn_fs_x__window_cache_key_t key = { 0 };
  get_window_key(&key, rs);
  key.chunk_index = chunk_index;
  SVN_ERR(svn_cache__get((void **) &cached_window,
                         is_cached,
                         rs->window_cache,
                         &key,
                         result_pool));

  if (*is_cached)
    {

      *window_p = cached_window->window;


      rs->current = cached_window->end_offset;
      rs->chunk_index = chunk_index;
    }

  return SVN_NO_ERROR;
}
