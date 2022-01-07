
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_boolean_t ;
struct report_baton {int wrapped_report_baton; TYPE_1__* wrapped_reporter; int out; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* set_path ) (int ,char const*,int ,int ,int ,char const*,int *) ;} ;


 int BOOLEAN_TO_WORD (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,char const*,int ,int ,int ,char const*,int *) ;
 int svn_depth_to_word (int ) ;
 int svn_stream_printf (int ,int *,char*,char const*,int ,int ,int ,char const*) ;

__attribute__((used)) static svn_error_t *
set_path(void *report_baton,
         const char *path,
         svn_revnum_t revision,
         svn_depth_t depth,
         svn_boolean_t start_empty,
         const char *lock_token,
         apr_pool_t *pool)
{
  struct report_baton *rb = report_baton;
  SVN_ERR(svn_stream_printf(rb->out, pool, "set_path(%s, %ld, %s, %s, %s)\n",
                            path, revision, svn_depth_to_word(depth),
                            BOOLEAN_TO_WORD(start_empty), lock_token));
  SVN_ERR(rb->wrapped_reporter->set_path(rb->wrapped_report_baton, path,
                                         revision, depth,
                                         start_empty, lock_token, pool));
  return SVN_NO_ERROR;
}
