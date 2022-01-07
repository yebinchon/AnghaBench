
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct report_baton {int wrapped_report_baton; TYPE_1__* wrapped_reporter; int out; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* finish_report ) (int ,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,int *) ;
 int svn_stream_puts (int ,char*) ;

__attribute__((used)) static svn_error_t *
finish_report(void *report_baton,
              apr_pool_t *pool)
{
  struct report_baton *rb = report_baton;
  SVN_ERR(svn_stream_puts(rb->out, "finish_report()\n"));
  SVN_ERR(rb->wrapped_reporter->finish_report(rb->wrapped_report_baton, pool));
  return SVN_NO_ERROR;
}
