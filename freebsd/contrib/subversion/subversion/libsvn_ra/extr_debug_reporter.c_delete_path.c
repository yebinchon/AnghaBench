
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct report_baton {int wrapped_report_baton; TYPE_1__* wrapped_reporter; int out; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* delete_path ) (int ,char const*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,char const*,int *) ;
 int svn_stream_printf (int ,int *,char*,char const*) ;

__attribute__((used)) static svn_error_t *
delete_path(void *report_baton,
            const char *path,
            apr_pool_t *pool)
{
  struct report_baton *rb = report_baton;
  SVN_ERR(svn_stream_printf(rb->out, pool, "delete_path(%s)\n", path));
  SVN_ERR(rb->wrapped_reporter->delete_path(rb->wrapped_report_baton,
                                            path, pool));
  return SVN_NO_ERROR;
}
