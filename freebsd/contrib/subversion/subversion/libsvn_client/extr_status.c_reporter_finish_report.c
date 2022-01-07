
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int svn_ra_session_t ;
struct TYPE_14__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
struct TYPE_15__ {int wrapped_report_baton; TYPE_1__* wrapped_reporter; int pool; int set_locks_baton; int depth; int ctx; int ancestor; } ;
typedef TYPE_3__ report_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_13__ {TYPE_2__* (* finish_report ) (int ,int *) ;} ;


 int SVN_ERR (TYPE_2__*) ;
 scalar_t__ SVN_ERR_RA_NOT_IMPLEMENTED ;
 TYPE_2__* SVN_NO_ERROR ;
 int * apr_hash_make (int ) ;
 TYPE_2__* stub1 (int ,int *) ;
 TYPE_2__* svn_client_open_ra_session2 (int **,int ,int *,int ,int *,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_2__* svn_ra_get_locks2 (int *,int **,char*,int ,int ) ;
 TYPE_2__* svn_ra_get_repos_root2 (int *,char const**,int ) ;
 TYPE_2__* svn_wc_status_set_repos_locks (int ,int *,char const*,int ) ;

__attribute__((used)) static svn_error_t *
reporter_finish_report(void *report_baton, apr_pool_t *pool)
{
  report_baton_t *rb = report_baton;
  svn_ra_session_t *ras;
  apr_hash_t *locks;
  const char *repos_root;
  apr_pool_t *subpool = svn_pool_create(pool);
  svn_error_t *err = SVN_NO_ERROR;



  SVN_ERR(svn_client_open_ra_session2(&ras, rb->ancestor, ((void*)0),
                                      rb->ctx, subpool, subpool));




  err = svn_ra_get_locks2(ras, &locks, "", rb->depth, rb->pool);
  if (err && err->apr_err == SVN_ERR_RA_NOT_IMPLEMENTED)
    {
      svn_error_clear(err);
      err = SVN_NO_ERROR;
      locks = apr_hash_make(rb->pool);
    }
  SVN_ERR(err);

  SVN_ERR(svn_ra_get_repos_root2(ras, &repos_root, rb->pool));


  svn_pool_destroy(subpool);

  SVN_ERR(svn_wc_status_set_repos_locks(rb->set_locks_baton, locks,
                                        repos_root, rb->pool));

  return rb->wrapped_reporter->finish_report(rb->wrapped_report_baton, pool);
}
