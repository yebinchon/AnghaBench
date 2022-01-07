
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_9__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_fs_fs__revision_file_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_10__ {int rev_root_id_cache; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_fs_id_at_offset (int **,int *,TYPE_1__*,int ,int ,int *) ;
 int get_root_changes_offset (int *,int *,int *,TYPE_1__*,int ,int *) ;
 int svn_cache__get (void**,scalar_t__*,int ,int *,int *) ;
 int svn_cache__set (int ,int *,int *,int *) ;
 int svn_fs_fs__close_revision_file (int *) ;
 int svn_fs_fs__ensure_revision_exists (int ,TYPE_1__*,int *) ;
 int * svn_fs_fs__id_create_root (int ,int *) ;
 int svn_fs_fs__open_pack_or_rev_file (int **,TYPE_1__*,int ,int *,int *) ;
 scalar_t__ svn_fs_fs__use_log_addressing (TYPE_1__*) ;

svn_error_t *
svn_fs_fs__rev_get_root(svn_fs_id_t **root_id_p,
                        svn_fs_t *fs,
                        svn_revnum_t rev,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  SVN_ERR(svn_fs_fs__ensure_revision_exists(rev, fs, scratch_pool));

  if (svn_fs_fs__use_log_addressing(fs))
    {
      *root_id_p = svn_fs_fs__id_create_root(rev, result_pool);
    }
  else
    {
      svn_fs_fs__revision_file_t *revision_file;
      apr_off_t root_offset;
      svn_fs_id_t *root_id = ((void*)0);
      svn_boolean_t is_cached;

      SVN_ERR(svn_cache__get((void **) root_id_p, &is_cached,
                            ffd->rev_root_id_cache, &rev, result_pool));
      if (is_cached)
        return SVN_NO_ERROR;

      SVN_ERR(svn_fs_fs__open_pack_or_rev_file(&revision_file, fs, rev,
                                               scratch_pool, scratch_pool));
      SVN_ERR(get_root_changes_offset(&root_offset, ((void*)0),
                                      revision_file, fs, rev,
                                      scratch_pool));

      SVN_ERR(get_fs_id_at_offset(&root_id, revision_file, fs, rev,
                                  root_offset, result_pool));

      SVN_ERR(svn_fs_fs__close_revision_file(revision_file));

      SVN_ERR(svn_cache__set(ffd->rev_root_id_cache, &rev, root_id,
                             scratch_pool));

      *root_id_p = root_id;
    }

  return SVN_NO_ERROR;
}
