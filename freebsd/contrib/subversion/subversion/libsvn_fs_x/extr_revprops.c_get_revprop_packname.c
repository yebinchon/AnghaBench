
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
typedef scalar_t__ svn_revnum_t ;
struct TYPE_11__ {int max_files_per_dir; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_12__ {TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_15__ {scalar_t__ start_rev; } ;
struct TYPE_13__ {int revision; TYPE_5__* manifest; TYPE_9__ entry; int folder; } ;
typedef TYPE_3__ packed_revprops_t ;
typedef int apr_pool_t ;
struct TYPE_14__ {int nelts; } ;


 TYPE_9__ APR_ARRAY_IDX (TYPE_5__*,int,int ) ;
 int PATH_MANIFEST ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT_REVPROP_MANIFEST ;
 int * SVN_NO_ERROR ;
 int get_entry (TYPE_5__*,int) ;
 int manifest_entry_t ;
 int read_manifest (TYPE_5__**,int *,int,int *,int *) ;
 char* svn_dirent_join (int ,int ,int *) ;
 int * svn_error_createf (int ,int *,char*,int,...) ;
 int svn_fs_x__path_pack_shard (TYPE_2__*,int,int *) ;
 int svn_fs_x__read_content (int **,char const*,int *) ;

__attribute__((used)) static svn_error_t *
get_revprop_packname(svn_fs_t *fs,
                     packed_revprops_t *revprops,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_stringbuf_t *content = ((void*)0);
  const char *manifest_file_path;
  int idx;
  svn_revnum_t previous_start_rev;
  int i;


  int rev_count = ffd->max_files_per_dir;
  svn_revnum_t manifest_start
    = revprops->revision - (revprops->revision % rev_count);
  if (manifest_start == 0)
    {
      ++manifest_start;
      --rev_count;
    }


  revprops->folder = svn_fs_x__path_pack_shard(fs, revprops->revision,
                                               result_pool);
  manifest_file_path = svn_dirent_join(revprops->folder, PATH_MANIFEST,
                                       result_pool);
  SVN_ERR(svn_fs_x__read_content(&content, manifest_file_path, result_pool));
  SVN_ERR(read_manifest(&revprops->manifest, content, revprops->revision,
                        result_pool, scratch_pool));


  if (revprops->manifest->nelts == 0)
    return svn_error_createf(SVN_ERR_FS_CORRUPT_REVPROP_MANIFEST, ((void*)0),
                             "Revprop manifest for r%ld is empty",
                             revprops->revision);

  previous_start_rev = 0;
  for (i = 0; i < revprops->manifest->nelts; ++i)
    {
      svn_revnum_t start_rev = APR_ARRAY_IDX(revprops->manifest, i,
                                             manifest_entry_t).start_rev;
      if ( start_rev < manifest_start
          || start_rev >= manifest_start + rev_count)
        return svn_error_createf(SVN_ERR_FS_CORRUPT_REVPROP_MANIFEST, ((void*)0),
                                 "Revprop manifest for r%ld contains "
                                 "out-of-range revision r%ld",
                                 revprops->revision, start_rev);

      if (start_rev < previous_start_rev)
        return svn_error_createf(SVN_ERR_FS_CORRUPT_REVPROP_MANIFEST, ((void*)0),
                                 "Entries in revprop manifest for r%ld "
                                 "are not ordered", revprops->revision);

      previous_start_rev = start_rev;
    }


  idx = get_entry(revprops->manifest, revprops->revision);
  revprops->entry = APR_ARRAY_IDX(revprops->manifest, idx,
                                  manifest_entry_t);

  return SVN_NO_ERROR;
}
