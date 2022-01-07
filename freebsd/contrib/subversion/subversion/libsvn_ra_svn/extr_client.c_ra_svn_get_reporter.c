
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int conn; } ;
typedef TYPE_1__ svn_ra_svn__session_baton_t ;
typedef int svn_ra_reporter3_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_delta_editor_t ;
struct TYPE_6__ {void* edit_baton; int const* editor; int * pool; int conn; TYPE_1__* sess_baton; } ;
typedef TYPE_2__ ra_svn_reporter_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_RA_SVN_CAP_DEPTH ;
 TYPE_2__* apr_palloc (int *,int) ;
 int ra_svn_reporter ;
 int svn_delta_depth_filter_editor (int const**,void**,int const*,void*,int ,int,int *) ;
 int svn_depth_files ;
 int svn_depth_infinity ;
 int svn_ra_svn_has_capability (int ,int ) ;

__attribute__((used)) static svn_error_t *
ra_svn_get_reporter(svn_ra_svn__session_baton_t *sess_baton,
                    apr_pool_t *pool,
                    const svn_delta_editor_t *editor,
                    void *edit_baton,
                    const char *target,
                    svn_depth_t depth,
                    const svn_ra_reporter3_t **reporter,
                    void **report_baton)
{
  ra_svn_reporter_baton_t *b;
  const svn_delta_editor_t *filter_editor;
  void *filter_baton;




  if ((depth != svn_depth_files) && (depth != svn_depth_infinity)
      && ! svn_ra_svn_has_capability(sess_baton->conn, SVN_RA_SVN_CAP_DEPTH))
    {
      SVN_ERR(svn_delta_depth_filter_editor(&filter_editor,
                                            &filter_baton,
                                            editor, edit_baton, depth,
                                            *target != '\0',
                                            pool));
      editor = filter_editor;
      edit_baton = filter_baton;
    }

  b = apr_palloc(pool, sizeof(*b));
  b->sess_baton = sess_baton;
  b->conn = sess_baton->conn;
  b->pool = pool;
  b->editor = editor;
  b->edit_baton = edit_baton;

  *reporter = &ra_svn_reporter;
  *report_baton = b;

  return SVN_NO_ERROR;
}
