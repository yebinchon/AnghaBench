
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_txdelta_window_t ;
struct TYPE_8__ {int member_0; } ;
typedef TYPE_1__ svn_fs_x__window_cache_key_t ;
struct TYPE_9__ {int end_offset; scalar_t__ start_offset; int * window; } ;
typedef TYPE_2__ svn_fs_x__txdelta_cached_window_t ;
typedef int svn_error_t ;
struct TYPE_10__ {int window_cache; int current; scalar_t__ start; } ;
typedef TYPE_3__ rep_state_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_window_key (TYPE_1__*,TYPE_3__*) ;
 int svn_cache__set (int ,int ,TYPE_2__*,int *) ;

__attribute__((used)) static svn_error_t *
set_cached_window(svn_txdelta_window_t *window,
                  rep_state_t *rs,
                  apr_off_t start_offset,
                  apr_pool_t *scratch_pool)
{

  svn_fs_x__txdelta_cached_window_t cached_window;
  svn_fs_x__window_cache_key_t key = {0};

  cached_window.window = window;
  cached_window.start_offset = start_offset - rs->start;
  cached_window.end_offset = rs->current;



  SVN_ERR(svn_cache__set(rs->window_cache,
                         get_window_key(&key, rs),
                         &cached_window,
                         scratch_pool));

  return SVN_NO_ERROR;
}
