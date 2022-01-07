
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct walk_func_filter_baton_t {int walk_baton; int (* walk_func ) (int ,char const*,TYPE_1__ const*,int *) ;} ;
typedef int apr_pool_t ;
struct TYPE_4__ {scalar_t__ filetype; } ;
typedef TYPE_1__ apr_finfo_t ;


 scalar_t__ APR_DIR ;
 scalar_t__ APR_REG ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,char const*,TYPE_1__ const*,int *) ;

__attribute__((used)) static svn_error_t *
walk_func_filter_func(void *baton,
                      const char *path,
                      const apr_finfo_t *finfo,
                      apr_pool_t *pool)
{
  struct walk_func_filter_baton_t *b = baton;

  if (finfo->filetype == APR_DIR || finfo->filetype == APR_REG)
    SVN_ERR(b->walk_func(b->walk_baton, path, finfo, pool));

  return SVN_NO_ERROR;
}
