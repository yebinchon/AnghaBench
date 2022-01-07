
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_6__ {TYPE_3__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
struct TYPE_7__ {TYPE_1__* fs_path; int repos; } ;
typedef TYPE_3__ svn_ra_local__session_baton_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int data; } ;


 int SVN_ERR (int ) ;
 int svn_fs_revision_root (int **,int ,int ,int *) ;
 int svn_repos_fs (int ) ;
 int * svn_repos_replay2 (int *,int ,int ,int ,int const*,void*,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_local__replay(svn_ra_session_t *session,
                     svn_revnum_t revision,
                     svn_revnum_t low_water_mark,
                     svn_boolean_t send_deltas,
                     const svn_delta_editor_t *editor,
                     void *edit_baton,
                     apr_pool_t *pool)
{
  svn_ra_local__session_baton_t *sess = session->priv;
  svn_fs_root_t *root;

  SVN_ERR(svn_fs_revision_root(&root, svn_repos_fs(sess->repos),
                               revision, pool));
  return svn_repos_replay2(root, sess->fs_path->data, low_water_mark,
                           send_deltas, editor, edit_baton, ((void*)0), ((void*)0),
                           pool);
}
