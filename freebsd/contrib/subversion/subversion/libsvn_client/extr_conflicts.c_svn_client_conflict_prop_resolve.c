
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client_conflict_t ;
struct TYPE_6__ {char const* propname; } ;
struct TYPE_7__ {TYPE_1__ prop; } ;
struct TYPE_8__ {int (* do_resolve_func ) (TYPE_3__*,int *,int *,int *) ;TYPE_2__ type_data; } ;
typedef TYPE_3__ svn_client_conflict_option_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int assert_prop_conflict (int *,int *) ;
 int stub1 (TYPE_3__*,int *,int *,int *) ;

svn_error_t *
svn_client_conflict_prop_resolve(svn_client_conflict_t *conflict,
                                 const char *propname,
                                 svn_client_conflict_option_t *option,
                                 svn_client_ctx_t *ctx,
                                 apr_pool_t *scratch_pool)
{
  SVN_ERR(assert_prop_conflict(conflict, scratch_pool));
  option->type_data.prop.propname = propname;
  SVN_ERR(option->do_resolve_func(option, conflict, ctx, scratch_pool));

  return SVN_NO_ERROR;
}
