
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_10__ {TYPE_4__* priv; } ;
typedef TYPE_3__ svn_ra_session_t ;
typedef int svn_ra_reporter3_t ;
struct TYPE_11__ {TYPE_2__* fs_path; int repos; int callback_baton; TYPE_1__* callbacks; int repos_url; int fs; } ;
typedef TYPE_4__ svn_ra_local__session_baton_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_delta_editor_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_9__ {int data; } ;
struct TYPE_8__ {int cancel_func; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_ILLEGAL_URL ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int _ (char*) ;
 char* apr_pstrcat (int *,char*,char const*,int ) ;
 int get_username (TYPE_3__*,int *) ;
 void* make_reporter_baton (TYPE_4__*,void*,int *) ;
 int ra_local_reporter ;
 int svn_delta_get_cancellation_editor (int ,int ,int const*,void*,int const**,void**,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*,int ) ;
 int svn_fs_youngest_rev (int *,int ,int *) ;
 int svn_repos_begin_report3 (void**,int ,int ,int ,char const*,char const*,int ,int ,int ,int ,int const*,void*,int *,int *,int ,int *) ;
 char* svn_uri_skip_ancestor (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
make_reporter(svn_ra_session_t *session,
              const svn_ra_reporter3_t **reporter,
              void **report_baton,
              svn_revnum_t revision,
              const char *target,
              const char *other_url,
              svn_boolean_t text_deltas,
              svn_depth_t depth,
              svn_boolean_t send_copyfrom_args,
              svn_boolean_t ignore_ancestry,
              const svn_delta_editor_t *editor,
              void *edit_baton,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  svn_ra_local__session_baton_t *sess = session->priv;
  void *rbaton;
  const char *other_fs_path = ((void*)0);


  if (! SVN_IS_VALID_REVNUM(revision))
    SVN_ERR(svn_fs_youngest_rev(&revision, sess->fs, scratch_pool));



  if (other_url)
    {
      const char *other_relpath
        = svn_uri_skip_ancestor(sess->repos_url, other_url, scratch_pool);



      if (! other_relpath)
        return svn_error_createf
          (SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
           _("'%s'\n"
             "is not the same repository as\n"
             "'%s'"), other_url, sess->repos_url);

      other_fs_path = apr_pstrcat(scratch_pool, "/", other_relpath,
                                  SVN_VA_NULL);
    }


  *reporter = &ra_local_reporter;

  SVN_ERR(get_username(session, scratch_pool));

  if (sess->callbacks)
    SVN_ERR(svn_delta_get_cancellation_editor(sess->callbacks->cancel_func,
                                              sess->callback_baton,
                                              editor,
                                              edit_baton,
                                              &editor,
                                              &edit_baton,
                                              result_pool));


  SVN_ERR(svn_repos_begin_report3(&rbaton,
                                  revision,
                                  sess->repos,
                                  sess->fs_path->data,
                                  target,
                                  other_fs_path,
                                  text_deltas,
                                  depth,
                                  ignore_ancestry,
                                  send_copyfrom_args,
                                  editor,
                                  edit_baton,
                                  ((void*)0),
                                  ((void*)0),
                                  0,






                                  result_pool));



  *report_baton = make_reporter_baton(sess, rbaton, result_pool);

  return SVN_NO_ERROR;
}
