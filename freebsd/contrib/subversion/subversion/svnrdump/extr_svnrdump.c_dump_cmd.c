
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_ra_session_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int number; } ;
struct TYPE_9__ {TYPE_3__ value; } ;
struct TYPE_6__ {int number; } ;
struct TYPE_7__ {TYPE_1__ value; } ;
struct TYPE_10__ {int dumpfile; int incremental; int quiet; TYPE_4__ end_revision; TYPE_2__ start_revision; int session; int ctx; int url; } ;
typedef TYPE_5__ opt_baton_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int SVN_ERR (int ) ;
 int * replay_revisions (int ,int *,int ,int ,int ,int ,int ,int *) ;
 int svn_client_open_ra_session2 (int **,int ,int *,int ,int *,int *) ;
 int svn_ra_get_repos_root2 (int *,char const**,int *) ;
 int svn_ra_reparent (int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
dump_cmd(apr_getopt_t *os,
         void *baton,
         apr_pool_t *pool)
{
  opt_baton_t *opt_baton = baton;
  svn_ra_session_t *extra_ra_session;
  const char *repos_root;

  SVN_ERR(svn_client_open_ra_session2(&extra_ra_session,
                                      opt_baton->url, ((void*)0),
                                      opt_baton->ctx, pool, pool));
  SVN_ERR(svn_ra_get_repos_root2(extra_ra_session, &repos_root, pool));
  SVN_ERR(svn_ra_reparent(extra_ra_session, repos_root, pool));

  return replay_revisions(opt_baton->session, extra_ra_session,
                          opt_baton->start_revision.value.number,
                          opt_baton->end_revision.value.number,
                          opt_baton->quiet, opt_baton->incremental,
                          opt_baton->dumpfile, pool);
}
