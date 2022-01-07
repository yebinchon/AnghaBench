
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_7__ {TYPE_3__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
struct TYPE_6__ {int path; } ;
struct TYPE_8__ {TYPE_1__ session_url; } ;
typedef TYPE_3__ svn_ra_serf__session_t ;
typedef int svn_ra_reporter3_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_delta_editor_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int make_update_reporter (TYPE_2__*,int const**,void**,int ,int ,char const*,char const*,int ,int ,int ,int ,int const*,void*,int *,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_ra_serf__do_diff(svn_ra_session_t *ra_session,
                     const svn_ra_reporter3_t **reporter,
                     void **report_baton,
                     svn_revnum_t revision,
                     const char *diff_target,
                     svn_depth_t depth,
                     svn_boolean_t ignore_ancestry,
                     svn_boolean_t text_deltas,
                     const char *versus_url,
                     const svn_delta_editor_t *diff_editor,
                     void *diff_baton,
                     apr_pool_t *pool)
{
  svn_ra_serf__session_t *session = ra_session->priv;
  apr_pool_t *scratch_pool = svn_pool_create(pool);

  SVN_ERR(make_update_reporter(ra_session, reporter, report_baton,
                               revision,
                               session->session_url.path, versus_url, diff_target,
                               depth, ignore_ancestry, text_deltas,
                               FALSE ,
                               diff_editor, diff_baton,
                               pool, scratch_pool));
  svn_pool_destroy(scratch_pool);
  return SVN_NO_ERROR;
}
