
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_ra_session_t ;
typedef int svn_error_t ;
struct TYPE_2__ {int skip_revprops; int quiet; int dumpfile; int session; int ctx; int url; } ;
typedef TYPE_1__ opt_baton_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int SVN_ERR (int ) ;
 int * load_revisions (int ,int *,int ,int ,int ,int *) ;
 int svn_client_open_ra_session2 (int **,int ,int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
load_cmd(apr_getopt_t *os,
         void *baton,
         apr_pool_t *pool)
{
  opt_baton_t *opt_baton = baton;
  svn_ra_session_t *aux_session;

  SVN_ERR(svn_client_open_ra_session2(&aux_session, opt_baton->url, ((void*)0),
                                      opt_baton->ctx, pool, pool));
  return load_revisions(opt_baton->session, aux_session,
                        opt_baton->dumpfile, opt_baton->quiet,
                        opt_baton->skip_revprops, pool);
}
