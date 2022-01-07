
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_4__ {int abort_report; int finish_report; int link_path; int delete_path; int set_path; } ;
typedef TYPE_1__ svn_ra_reporter3_t ;
typedef int svn_error_t ;
struct report_baton {int * out; void* wrapped_report_baton; TYPE_1__ const* wrapped_reporter; } ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int * SVN_NO_ERROR ;
 int TRUE ;
 int abort_report ;
 scalar_t__ apr_file_open_stderr (int **,int *) ;
 void* apr_palloc (int *,int) ;
 int delete_path ;
 int finish_report ;
 int link_path ;
 int set_path ;
 int * svn_error_wrap_apr (scalar_t__,char*) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;

svn_error_t *
svn_ra__get_debug_reporter(const svn_ra_reporter3_t **reporter,
                           void **report_baton,
                           const svn_ra_reporter3_t *wrapped_reporter,
                           void *wrapped_report_baton,
                           apr_pool_t *pool)
{
  svn_ra_reporter3_t *tree_reporter;
  struct report_baton *rb;
  apr_file_t *errfp;
  svn_stream_t *out;

  apr_status_t apr_err = apr_file_open_stderr(&errfp, pool);
  if (apr_err)
    return svn_error_wrap_apr(apr_err, "Problem opening stderr");

  out = svn_stream_from_aprfile2(errfp, TRUE, pool);


  tree_reporter = apr_palloc(pool, sizeof(*tree_reporter));
  rb = apr_palloc(pool, sizeof(*rb));

  tree_reporter->set_path = set_path;
  tree_reporter->delete_path = delete_path;
  tree_reporter->link_path = link_path;
  tree_reporter->finish_report = finish_report;
  tree_reporter->abort_report = abort_report;

  rb->wrapped_reporter = wrapped_reporter;
  rb->wrapped_report_baton = wrapped_report_baton;
  rb->out = out;

  *reporter = tree_reporter;
  *report_baton = rb;

  return SVN_NO_ERROR;
}
