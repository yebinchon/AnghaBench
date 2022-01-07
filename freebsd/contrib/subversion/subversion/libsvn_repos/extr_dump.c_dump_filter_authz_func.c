
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_2__ {int filter_baton; int (* filter_func ) (int *,int *,char const*,int ,int *) ;} ;
typedef TYPE_1__ dump_filter_baton_t ;
typedef int apr_pool_t ;


 int stub1 (int *,int *,char const*,int ,int *) ;
 int * svn_error_trace (int ) ;

__attribute__((used)) static svn_error_t *
dump_filter_authz_func(svn_boolean_t *allowed,
                       svn_fs_root_t *root,
                       const char *path,
                       void *baton,
                       apr_pool_t *pool)
{
  dump_filter_baton_t *b = baton;

  return svn_error_trace(b->filter_func(allowed, root, path, b->filter_baton,
                                        pool));
}
