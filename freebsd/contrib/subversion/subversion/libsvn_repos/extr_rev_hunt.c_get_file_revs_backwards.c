
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_4__ {int fs; } ;
typedef TYPE_1__ svn_repos_t ;
typedef int (* svn_repos_authz_func_t ) (int *,int *,char const*,void*,int *) ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_fs_root_t ;
typedef int svn_fs_history_t ;
typedef int svn_file_rev_handler_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct send_baton {int * iterpool; int * last_pool; int last_props; int * last_path; int * last_root; void* include_merged_revisions; } ;
struct path_revision {char const* path; scalar_t__ revnum; void* merged; } ;
typedef int apr_pool_t ;


 void* FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FILE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int apr_hash_make (int *) ;
 struct path_revision* apr_palloc (int *,int) ;
 int send_path_revision (struct path_revision*,TYPE_1__*,struct send_baton*,int ,void*) ;
 int * svn_error_createf (int ,int *,int ,char const*,scalar_t__) ;
 int svn_fs_check_path (scalar_t__*,int *,char const*,int *) ;
 int svn_fs_history_location (char const**,scalar_t__*,int *,int *) ;
 int svn_fs_history_prev2 (int **,int *,int ,int *,int *) ;
 int svn_fs_node_history2 (int **,int *,char const*,int *,int *) ;
 int svn_fs_revision_root (int **,int ,scalar_t__,int *) ;
 scalar_t__ svn_node_file ;
 int svn_pool_clear (int *) ;
 void* svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
get_file_revs_backwards(svn_repos_t *repos,
                        const char *path,
                        svn_revnum_t start,
                        svn_revnum_t end,
                        svn_repos_authz_func_t authz_read_func,
                        void *authz_read_baton,
                        svn_file_rev_handler_t handler,
                        void *handler_baton,
                        apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool, *last_pool;
  svn_fs_history_t *history;
  svn_fs_root_t *root;
  svn_node_kind_t kind;
  struct send_baton sb;





  iterpool = svn_pool_create(scratch_pool);
  last_pool = svn_pool_create(scratch_pool);
  sb.iterpool = svn_pool_create(scratch_pool);
  sb.last_pool = svn_pool_create(scratch_pool);
  sb.include_merged_revisions = FALSE;


  sb.last_root = ((void*)0);
  sb.last_path = ((void*)0);


  sb.last_props = apr_hash_make(sb.last_pool);


  SVN_ERR(svn_fs_revision_root(&root, repos->fs, end, scratch_pool));
  SVN_ERR(svn_fs_check_path(&kind, root, path, scratch_pool));
  if (kind != svn_node_file)
    return svn_error_createf(SVN_ERR_FS_NOT_FILE,
                             ((void*)0), _("'%s' is not a file in revision %ld"),
                             path, end);


  SVN_ERR(svn_fs_node_history2(&history, root, path, scratch_pool, iterpool));
  while (1)
    {
      struct path_revision *path_rev;
      svn_revnum_t tmp_revnum;
      const char *tmp_path;

      svn_pool_clear(iterpool);


      SVN_ERR(svn_fs_history_prev2(&history, history, TRUE, iterpool,
                                   iterpool));
      if (!history)
        break;
      SVN_ERR(svn_fs_history_location(&tmp_path, &tmp_revnum,
                                      history, iterpool));


      if (authz_read_func)
        {
          svn_boolean_t readable;
          svn_fs_root_t *tmp_root;

          SVN_ERR(svn_fs_revision_root(&tmp_root, repos->fs, tmp_revnum,
                                       iterpool));
          SVN_ERR(authz_read_func(&readable, tmp_root, tmp_path,
                                  authz_read_baton, iterpool));
          if (! readable)
            break;
        }


      path_rev = apr_palloc(iterpool, sizeof(*path_rev));
      path_rev->path = tmp_path;
      path_rev->revnum = tmp_revnum;
      path_rev->merged = FALSE;

      SVN_ERR(send_path_revision(path_rev, repos, &sb,
                                 handler, handler_baton));

      if (path_rev->revnum <= start)
        break;


      {
        apr_pool_t *tmp_pool = iterpool;
        iterpool = last_pool;
        last_pool = tmp_pool;
      }
    }

  svn_pool_destroy(iterpool);
  svn_pool_destroy(last_pool);
  svn_pool_destroy(sb.last_pool);
  svn_pool_destroy(sb.iterpool);

  return SVN_NO_ERROR;

}
