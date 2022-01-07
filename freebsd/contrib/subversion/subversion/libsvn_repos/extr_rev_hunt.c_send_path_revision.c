
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ svn_txdelta_window_handler_t ;
typedef int svn_txdelta_stream_t ;
struct TYPE_3__ {int fs; } ;
typedef TYPE_1__ svn_repos_t ;
typedef int svn_prop_t ;
typedef int svn_fs_root_t ;
typedef int (* svn_file_rev_handler_t ) (void*,int ,int ,int *,int ,scalar_t__*,void**,int *,int *) ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct send_baton {int * last_pool; int * iterpool; int * last_props; int last_path; int * last_root; scalar_t__ include_merged_revisions; } ;
struct path_revision {int path; int merged; int revnum; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int * apr_array_make (int *,int ,int) ;
 scalar_t__ strcmp (int ,int ) ;
 scalar_t__ svn_delta_noop_window_handler ;
 int svn_fs_contents_different (scalar_t__*,int *,int ,int *,int ,int *) ;
 int svn_fs_get_file_delta_stream (int **,int *,int ,int *,int ,int *) ;
 int svn_fs_node_proplist (int **,int *,int ,int *) ;
 int svn_fs_props_changed (scalar_t__*,int *,int ,int *,int ,int *) ;
 int svn_fs_revision_proplist2 (int **,int ,int ,int ,int *,int *) ;
 int svn_fs_revision_root (int **,int ,int ,int *) ;
 int svn_pool_clear (int *) ;
 int svn_prop_diffs (int **,int *,int *,int *) ;
 int * svn_prop_hash_dup (int *,int *) ;
 int svn_txdelta_send_txstream (int *,scalar_t__,void*,int *) ;

__attribute__((used)) static svn_error_t *
send_path_revision(struct path_revision *path_rev,
                   svn_repos_t *repos,
                   struct send_baton *sb,
                   svn_file_rev_handler_t handler,
                   void *handler_baton)
{
  apr_hash_t *rev_props;
  apr_hash_t *props;
  apr_array_header_t *prop_diffs;
  svn_fs_root_t *root;
  svn_txdelta_stream_t *delta_stream;
  svn_txdelta_window_handler_t delta_handler = ((void*)0);
  void *delta_baton = ((void*)0);
  apr_pool_t *tmp_pool;
  svn_boolean_t contents_changed;
  svn_boolean_t props_changed;

  svn_pool_clear(sb->iterpool);


  SVN_ERR(svn_fs_revision_proplist2(&rev_props, repos->fs,
                                    path_rev->revnum, FALSE,
                                    sb->iterpool, sb->iterpool));


  SVN_ERR(svn_fs_revision_root(&root, repos->fs, path_rev->revnum,
                               sb->iterpool));


  if (sb->last_root)
    {


      SVN_ERR(svn_fs_props_changed(&props_changed,
                                   sb->last_root, sb->last_path,
                                   root, path_rev->path, sb->iterpool));
    }
  else
    {
      props_changed = TRUE;
    }


  if (props_changed)
    {

      SVN_ERR(svn_fs_node_proplist(&props, root, path_rev->path,
                                   sb->iterpool));
      SVN_ERR(svn_prop_diffs(&prop_diffs, props, sb->last_props,
                             sb->iterpool));
    }
  else
    {

      props = svn_prop_hash_dup(sb->last_props, sb->iterpool);
      prop_diffs = apr_array_make(sb->iterpool, 0, sizeof(svn_prop_t));
    }


  if (! sb->last_root)
    {

      contents_changed = TRUE;
    }
  else if (sb->include_merged_revisions
           && strcmp(sb->last_path, path_rev->path))
    {







      contents_changed = TRUE;
    }
  else
    {


      SVN_ERR(svn_fs_contents_different(&contents_changed, sb->last_root,
                                        sb->last_path, root, path_rev->path,
                                        sb->iterpool));
    }


  SVN_ERR(handler(handler_baton, path_rev->path, path_rev->revnum,
                  rev_props, path_rev->merged,
                  contents_changed ? &delta_handler : ((void*)0),
                  contents_changed ? &delta_baton : ((void*)0),
                  prop_diffs, sb->iterpool));




  if (delta_handler && delta_handler != svn_delta_noop_window_handler)
    {

      SVN_ERR(svn_fs_get_file_delta_stream(&delta_stream,
                                           sb->last_root, sb->last_path,
                                           root, path_rev->path,
                                           sb->iterpool));

      SVN_ERR(svn_txdelta_send_txstream(delta_stream,
                                        delta_handler, delta_baton,
                                        sb->iterpool));
    }


  sb->last_root = root;
  sb->last_path = path_rev->path;
  sb->last_props = props;


  tmp_pool = sb->iterpool;
  sb->iterpool = sb->last_pool;
  sb->last_pool = tmp_pool;

  return SVN_NO_ERROR;
}
