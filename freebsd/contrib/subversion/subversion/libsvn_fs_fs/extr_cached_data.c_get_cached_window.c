
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int chunk_index; int member_0; } ;
typedef TYPE_1__ window_cache_key_t ;
typedef int svn_txdelta_window_t ;
struct TYPE_12__ {int end_offset; int * window; } ;
typedef TYPE_2__ svn_fs_fs__txdelta_cached_window_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_13__ {int chunk_index; int current; int window_cache; int raw_window_cache; } ;
typedef TYPE_3__ rep_state_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_window_key (TYPE_1__*,TYPE_3__*) ;
 int parse_raw_window ;
 int svn_cache__get (void**,scalar_t__*,int ,TYPE_1__*,int *) ;
 int svn_cache__get_partial (void**,scalar_t__*,int ,TYPE_1__*,int ,int *,int *) ;
 int svn_cache__set (int ,TYPE_1__*,TYPE_2__*,int *) ;

__attribute__((used)) static svn_error_t *
get_cached_window(svn_txdelta_window_t **window_p,
                  rep_state_t *rs,
                  int chunk_index,
                  svn_boolean_t *is_cached,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  if (! rs->window_cache)
    {

      *is_cached = FALSE;
    }
  else
    {

      svn_fs_fs__txdelta_cached_window_t *cached_window;
      window_cache_key_t key = { 0 };
      get_window_key(&key, rs);
      key.chunk_index = chunk_index;
      SVN_ERR(svn_cache__get((void **) &cached_window,
                             is_cached,
                             rs->window_cache,
                             &key,
                             result_pool));



      if (!*is_cached && rs->raw_window_cache)
        {
          SVN_ERR(svn_cache__get_partial((void **) &cached_window, is_cached,
                                         rs->raw_window_cache, &key,
                                         parse_raw_window, ((void*)0), result_pool));
          if (*is_cached)
            SVN_ERR(svn_cache__set(rs->window_cache, &key, cached_window,
                                   scratch_pool));
        }


      if (*is_cached)
        {

          *window_p = cached_window->window;


          rs->current = cached_window->end_offset;
          rs->chunk_index = chunk_index;
        }
    }

  return SVN_NO_ERROR;
}
