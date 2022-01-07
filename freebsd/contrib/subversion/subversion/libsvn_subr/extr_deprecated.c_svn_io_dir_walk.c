
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_io_walk_func_t ;
typedef int svn_error_t ;
struct walk_func_filter_baton_t {void* walk_baton; int walk_func; } ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;


 int * svn_error_trace (int ) ;
 int svn_io_dir_walk2 (char const*,int ,int ,struct walk_func_filter_baton_t*,int *) ;
 int walk_func_filter_func ;

svn_error_t *
svn_io_dir_walk(const char *dirname,
                apr_int32_t wanted,
                svn_io_walk_func_t walk_func,
                void *walk_baton,
                apr_pool_t *pool)
{
  struct walk_func_filter_baton_t baton;
  baton.walk_func = walk_func;
  baton.walk_baton = walk_baton;
  return svn_error_trace(svn_io_dir_walk2(dirname, wanted,
                                          walk_func_filter_func,
                                          &baton, pool));
}
