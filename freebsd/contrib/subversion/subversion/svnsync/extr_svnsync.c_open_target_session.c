
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_ra_session_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int to_url; int config; int sync_callbacks; } ;
typedef TYPE_1__ subcommand_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int check_if_session_is_at_repos_root (int *,int ,int *) ;
 int svn_ra_open4 (int **,int *,int ,int *,int *,TYPE_1__*,int ,int *) ;

__attribute__((used)) static svn_error_t *
open_target_session(svn_ra_session_t **target_session_p,
                    subcommand_baton_t *baton,
                    apr_pool_t *pool)
{
  svn_ra_session_t *target_session;
  SVN_ERR(svn_ra_open4(&target_session, ((void*)0), baton->to_url, ((void*)0),
                       &(baton->sync_callbacks), baton, baton->config, pool));
  SVN_ERR(check_if_session_is_at_repos_root(target_session, baton->to_url, pool));

  *target_session_p = target_session;
  return SVN_NO_ERROR;
}
