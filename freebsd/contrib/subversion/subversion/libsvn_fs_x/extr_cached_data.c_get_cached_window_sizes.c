
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int window_sizes_t ;
struct TYPE_6__ {int member_0; } ;
typedef TYPE_1__ svn_fs_x__window_cache_key_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_7__ {int window_cache; } ;
typedef TYPE_2__ rep_state_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_cached_window_sizes_func ;
 int get_window_key (TYPE_1__*,TYPE_2__*) ;
 int svn_cache__get_partial (void**,int *,int ,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_cached_window_sizes(window_sizes_t **sizes,
                        rep_state_t *rs,
                        svn_boolean_t *is_cached,
                        apr_pool_t *pool)
{
  svn_fs_x__window_cache_key_t key = { 0 };
  SVN_ERR(svn_cache__get_partial((void **)sizes,
                                 is_cached,
                                 rs->window_cache,
                                 get_window_key(&key, rs),
                                 get_cached_window_sizes_func,
                                 ((void*)0),
                                 pool));

  return SVN_NO_ERROR;
}
