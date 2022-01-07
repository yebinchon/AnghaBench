
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_error_t ;
struct TYPE_6__ {TYPE_1__* editor; } ;
typedef TYPE_2__ report_context_t ;
struct TYPE_7__ {int dir_baton; TYPE_2__* ctx; } ;
typedef TYPE_3__ dir_baton_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* change_dir_prop ) (int ,char const*,int const*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int ensure_dir_opened (TYPE_3__*,int *) ;
 int stub1 (int ,char const*,int const*,int *) ;
 char* svn_ra_serf__svnname_from_wirename (char const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
set_dir_prop(void *baton,
             const char *path,
             const char *ns,
             const char *name,
             const svn_string_t *val,
             apr_pool_t *scratch_pool)
{
  dir_baton_t *dir = baton;
  report_context_t *ctx = dir->ctx;
  const char *prop_name;

  prop_name = svn_ra_serf__svnname_from_wirename(ns, name, scratch_pool);
  if (prop_name == ((void*)0))
    return SVN_NO_ERROR;

  SVN_ERR(ensure_dir_opened(dir, scratch_pool));

  SVN_ERR(ctx->editor->change_dir_prop(dir->dir_baton,
                                       prop_name, val,
                                       scratch_pool));
  return SVN_NO_ERROR;
}
