
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int path; } ;
struct TYPE_12__ {int using_chunked_requests; TYPE_2__ session_url; } ;
typedef TYPE_3__ svn_ra_serf__session_t ;
struct TYPE_10__ {int code; } ;
struct TYPE_13__ {char* method; TYPE_1__ sline; int no_fail_on_http_failure_status; int body_delegate; int response_handler; int path; } ;
typedef TYPE_4__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int create_simple_options_body ;
 int svn_ra_serf__context_run_one (TYPE_4__*,int *) ;
 TYPE_4__* svn_ra_serf__create_handler (TYPE_3__*,int *) ;
 int svn_ra_serf__handle_discard_body ;
 int svn_ra_serf__unexpected_status (TYPE_4__*) ;

svn_error_t *
svn_ra_serf__probe_proxy(svn_ra_serf__session_t *serf_sess,
                         apr_pool_t *scratch_pool)
{
  svn_ra_serf__handler_t *handler;

  handler = svn_ra_serf__create_handler(serf_sess, scratch_pool);
  handler->method = "OPTIONS";
  handler->path = serf_sess->session_url.path;


  handler->response_handler = svn_ra_serf__handle_discard_body;


  handler->body_delegate = create_simple_options_body;
  handler->no_fail_on_http_failure_status = TRUE;



  SVN_ERR(svn_ra_serf__context_run_one(handler, scratch_pool));



  if (handler->sline.code == 411)
    {
      serf_sess->using_chunked_requests = FALSE;

      return SVN_NO_ERROR;
    }
  if (handler->sline.code != 200)
    SVN_ERR(svn_ra_serf__unexpected_status(handler));

  return SVN_NO_ERROR;
}
