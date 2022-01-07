
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_repos_revision_access_level_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_fs_path_change_iterator_t ;
struct TYPE_7__ {char* data; } ;
struct TYPE_8__ {scalar_t__ node_kind; scalar_t__ change_kind; char* copyfrom_path; int copyfrom_rev; void* copyfrom_known; TYPE_1__ path; } ;
typedef TYPE_2__ svn_fs_path_change3_t ;
typedef int svn_fs_history_t ;
typedef int svn_error_t ;
typedef void* svn_boolean_t ;
struct TYPE_9__ {int path_change_receiver_baton; int (* path_change_receiver ) (int ,TYPE_2__*,int *) ;int authz_read_baton; int (* authz_read_func ) (void**,int *,char const*,int ,int *) ;} ;
typedef TYPE_3__ log_callbacks_t ;
typedef int apr_pool_t ;


 void* FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int stub1 (void**,int *,char const*,int ,int *) ;
 int stub2 (void**,int *,char const*,int ,int *) ;
 int stub3 (int ,TYPE_2__*,int *) ;
 int svn_fs_check_path (scalar_t__*,int *,char const*,int *) ;
 int svn_fs_copied_from (int *,char const**,int *,char const*,int *) ;
 int svn_fs_history_location (char const**,int *,int *,int *) ;
 int svn_fs_history_prev2 (int **,int *,void*,int *,int *) ;
 int svn_fs_node_history2 (int **,int *,char const*,int *,int *) ;
 scalar_t__ svn_fs_path_change_add ;
 scalar_t__ svn_fs_path_change_delete ;
 int svn_fs_path_change_get (TYPE_2__**,int *) ;
 scalar_t__ svn_fs_path_change_replace ;
 int svn_fs_paths_changed3 (int **,int *,int *,int *) ;
 int svn_fs_revision_root (int **,int *,int ,int *) ;
 char* svn_fspath__join (char const*,char const*,int *) ;
 int svn_fspath__split (char const**,char const**,char const*,int *) ;
 scalar_t__ svn_node_unknown ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_repos_revision_access_full ;
 int svn_repos_revision_access_none ;
 int svn_repos_revision_access_partial ;

__attribute__((used)) static svn_error_t *
detect_changed(svn_repos_revision_access_level_t *access_level,
               svn_fs_root_t *root,
               svn_fs_t *fs,
               const log_callbacks_t *callbacks,
               apr_pool_t *scratch_pool)
{
  svn_fs_path_change_iterator_t *iterator;
  svn_fs_path_change3_t *change;
  apr_pool_t *iterpool;
  svn_boolean_t found_readable = FALSE;
  svn_boolean_t found_unreadable = FALSE;


  SVN_ERR(svn_fs_paths_changed3(&iterator, root, scratch_pool, scratch_pool));
  SVN_ERR(svn_fs_path_change_get(&change, iterator));

  if (!change)
    {


      *access_level = svn_repos_revision_access_full;
      return SVN_NO_ERROR;
    }

  iterpool = svn_pool_create(scratch_pool);
  while (change)
    {



      const char *path = change->path.data;
      svn_pool_clear(iterpool);


      if (callbacks->authz_read_func)
        {
          svn_boolean_t readable;
          SVN_ERR(callbacks->authz_read_func(&readable, root, path,
                                             callbacks->authz_read_baton,
                                             iterpool));
          if (! readable)
            {
              found_unreadable = TRUE;
              SVN_ERR(svn_fs_path_change_get(&change, iterator));
              continue;
            }
        }


      found_readable = TRUE;



      if (change->node_kind == svn_node_unknown)
        {
          svn_fs_root_t *check_root = root;
          const char *check_path = path;



          if (change->change_kind == svn_fs_path_change_delete)
            {
              svn_fs_history_t *history;
              svn_revnum_t prev_rev;
              const char *parent_path, *name;

              svn_fspath__split(&parent_path, &name, path, iterpool);

              SVN_ERR(svn_fs_node_history2(&history, root, parent_path,
                                           iterpool, iterpool));



              SVN_ERR(svn_fs_history_prev2(&history, history, TRUE, iterpool,
                                           iterpool));
              SVN_ERR(svn_fs_history_prev2(&history, history, TRUE, iterpool,
                                           iterpool));

              SVN_ERR(svn_fs_history_location(&parent_path, &prev_rev,
                                              history, iterpool));
              SVN_ERR(svn_fs_revision_root(&check_root, fs, prev_rev,
                                           iterpool));
              check_path = svn_fspath__join(parent_path, name, iterpool);
            }

          SVN_ERR(svn_fs_check_path(&change->node_kind, check_root, check_path,
                                    iterpool));
        }

      if ( (change->change_kind == svn_fs_path_change_add)
          || (change->change_kind == svn_fs_path_change_replace))
        {
          const char *copyfrom_path = change->copyfrom_path;
          svn_revnum_t copyfrom_rev = change->copyfrom_rev;




          if (!change->copyfrom_known)
            {
              SVN_ERR(svn_fs_copied_from(&copyfrom_rev, &copyfrom_path,
                                        root, path, iterpool));
              change->copyfrom_known = TRUE;
            }

          if (copyfrom_path && SVN_IS_VALID_REVNUM(copyfrom_rev))
            {
              svn_boolean_t readable = TRUE;

              if (callbacks->authz_read_func)
                {
                  svn_fs_root_t *copyfrom_root;

                  SVN_ERR(svn_fs_revision_root(&copyfrom_root, fs,
                                               copyfrom_rev, iterpool));
                  SVN_ERR(callbacks->authz_read_func(&readable,
                                                     copyfrom_root,
                                                     copyfrom_path,
                                                     callbacks->authz_read_baton,
                                                     iterpool));
                  if (! readable)
                    found_unreadable = TRUE;
                }

              if (readable)
                {
                  change->copyfrom_path = copyfrom_path;
                  change->copyfrom_rev = copyfrom_rev;
                }
            }
        }

      if (callbacks->path_change_receiver)
        SVN_ERR(callbacks->path_change_receiver(
                                     callbacks->path_change_receiver_baton,
                                     change,
                                     iterpool));


      SVN_ERR(svn_fs_path_change_get(&change, iterator));
    }

  svn_pool_destroy(iterpool);

  if (! found_readable)
    {

      *access_level = svn_repos_revision_access_none;
    }
  else if (found_unreadable)
    {

      *access_level = svn_repos_revision_access_partial;
    }
  else
    {

      *access_level = svn_repos_revision_access_full;
    }

  return SVN_NO_ERROR;
}
