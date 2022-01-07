
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_6__ {int member_0; } ;
typedef TYPE_1__ svn_fs_x__window_cache_key_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_7__ {int combined_cache; } ;
typedef TYPE_2__ rep_state_t ;
typedef int apr_pool_t ;


 int get_window_key (TYPE_1__*,TYPE_2__*) ;
 int * svn_cache__get (void**,int *,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_cached_combined_window(svn_stringbuf_t **window_p,
                           rep_state_t *rs,
                           svn_boolean_t *is_cached,
                           apr_pool_t *pool)
{

  svn_fs_x__window_cache_key_t key = { 0 };
  return svn_cache__get((void **)window_p,
                        is_cached,
                        rs->combined_cache,
                        get_window_key(&key, rs),
                        pool);
}
