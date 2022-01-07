
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_5__ {int quiet; } ;
typedef TYPE_1__ svn_cl__opt_state_t ;
struct TYPE_6__ {int * ctx; TYPE_1__* opt_state; } ;
typedef TYPE_2__ svn_cl__cmd_baton_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {scalar_t__ ind; scalar_t__ argc; } ;
typedef TYPE_3__ apr_getopt_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_CL_ARG_PARSING_ERROR ;
 int * SVN_NO_ERROR ;
 int shelves_list (char const*,int,int *,int *) ;
 int svn_dirent_get_absolute (char const**,char*,int *) ;
 int * svn_error_create (int ,int ,int *) ;

svn_error_t *
svn_cl__shelves(apr_getopt_t *os,
                void *baton,
                apr_pool_t *pool)
{
  svn_cl__opt_state_t *opt_state = ((svn_cl__cmd_baton_t *) baton)->opt_state;
  svn_client_ctx_t *ctx = ((svn_cl__cmd_baton_t *) baton)->ctx;
  const char *local_abspath;


  if (os->ind < os->argc)
    return svn_error_create(SVN_ERR_CL_ARG_PARSING_ERROR, 0, ((void*)0));

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, "", pool));
  SVN_ERR(shelves_list(local_abspath, ! opt_state->quiet ,
                       ctx, pool));

  return SVN_NO_ERROR;
}
