
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pending_error; scalar_t__ timeout; int context; int cancel_baton; int * (* cancel_func ) (int ) ;} ;
typedef TYPE_1__ svn_ra_serf__session_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_interval_time_t ;


 scalar_t__ APR_STATUS_IS_TIMEUP (scalar_t__) ;
 int SVN_ERR (int *) ;
 scalar_t__ SVN_ERR_BAD_CATEGORY_START ;
 scalar_t__ SVN_ERR_LAST ;
 scalar_t__ SVN_ERR_RA_DAV_CONN_TIMEOUT ;
 int SVN_ERR_W (int ,int *) ;
 scalar_t__ SVN_NO_ERROR ;
 scalar_t__ SVN_RA_SERF__CONTEXT_RUN_DURATION ;
 int * _ (char*) ;
 int assert (int) ;
 scalar_t__ serf_context_run (int ,scalar_t__,int *) ;
 int * stub1 (int ) ;
 int * svn_error_compose_create (int *,int ) ;
 int svn_error_create (scalar_t__,int *,int *) ;
 int * svn_ra_serf__wrap_err (scalar_t__,int *) ;

svn_error_t *
svn_ra_serf__context_run(svn_ra_serf__session_t *sess,
                         apr_interval_time_t *waittime_left,
                         apr_pool_t *scratch_pool)
{
  apr_status_t status;
  svn_error_t *err;
  assert(sess->pending_error == SVN_NO_ERROR);

  if (sess->cancel_func)
    SVN_ERR(sess->cancel_func(sess->cancel_baton));

  status = serf_context_run(sess->context,
                            SVN_RA_SERF__CONTEXT_RUN_DURATION,
                            scratch_pool);

  err = sess->pending_error;
  sess->pending_error = SVN_NO_ERROR;





  if (APR_STATUS_IS_TIMEUP(status))
    {
      status = 0;

      if (sess->timeout)
        {
          if (*waittime_left > SVN_RA_SERF__CONTEXT_RUN_DURATION)
            {
              *waittime_left -= SVN_RA_SERF__CONTEXT_RUN_DURATION;
            }
          else
            {
              return
                  svn_error_compose_create(
                        err,
                        svn_error_create(SVN_ERR_RA_DAV_CONN_TIMEOUT, ((void*)0),
                                         _("Connection timed out")));
            }
        }
    }
  else
    {
      *waittime_left = sess->timeout;
    }

  SVN_ERR(err);
  if (status)
    {


      if (status >= SVN_ERR_BAD_CATEGORY_START && status < SVN_ERR_LAST)
        {

          SVN_ERR_W(svn_error_create(status, ((void*)0), ((void*)0)),
                    _("Error running context"));
        }

      return svn_ra_serf__wrap_err(status, _("Error running context"));
    }

  return SVN_NO_ERROR;
}
