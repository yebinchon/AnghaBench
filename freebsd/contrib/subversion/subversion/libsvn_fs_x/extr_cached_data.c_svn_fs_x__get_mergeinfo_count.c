
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_x__revision_file_t ;
struct TYPE_17__ {int second; int revision; } ;
typedef TYPE_1__ svn_fs_x__pair_cache_key_t ;
struct TYPE_18__ {int mergeinfo_count; } ;
typedef TYPE_2__ svn_fs_x__noderev_t ;
struct TYPE_19__ {int change_set; } ;
typedef TYPE_3__ svn_fs_x__id_t ;
struct TYPE_20__ {scalar_t__ noderevs_container_cache; } ;
typedef TYPE_4__ svn_fs_x__data_t ;
struct TYPE_21__ {TYPE_4__* fsap_data; } ;
typedef TYPE_5__ svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef int apr_int64_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_cache__get_partial (void**,scalar_t__*,scalar_t__,TYPE_1__*,int ,int *,int *) ;
 int svn_fs_x__get_node_revision (TYPE_2__**,TYPE_5__*,TYPE_3__ const*,int *,int *) ;
 int svn_fs_x__get_revnum (int ) ;
 scalar_t__ svn_fs_x__is_packed_rev (TYPE_5__*,int ) ;
 int svn_fs_x__is_txn (int ) ;
 int svn_fs_x__item_offset (int *,int *,TYPE_5__*,int *,TYPE_3__ const*,int *) ;
 int svn_fs_x__mergeinfo_count_get_func ;
 int svn_fs_x__packed_base_rev (TYPE_5__*,int ) ;
 int svn_fs_x__rev_file_init (int **,TYPE_5__*,int ,int *) ;

svn_error_t *
svn_fs_x__get_mergeinfo_count(apr_int64_t *count,
                              svn_fs_t *fs,
                              const svn_fs_x__id_t *id,
                              apr_pool_t *scratch_pool)
{
  svn_fs_x__noderev_t *noderev;






  if (! svn_fs_x__is_txn(id->change_set))
    {

      svn_fs_x__data_t *ffd = fs->fsap_data;
      svn_revnum_t revision = svn_fs_x__get_revnum(id->change_set);

      svn_fs_x__revision_file_t *rev_file;
      SVN_ERR(svn_fs_x__rev_file_init(&rev_file, fs, revision,
                                      scratch_pool));

      if ( svn_fs_x__is_packed_rev(fs, revision)
          && ffd->noderevs_container_cache)
        {
          svn_fs_x__pair_cache_key_t key;
          apr_off_t offset;
          apr_uint32_t sub_item;
          svn_boolean_t is_cached;

          SVN_ERR(svn_fs_x__item_offset(&offset, &sub_item, fs, rev_file,
                                        id, scratch_pool));
          key.revision = svn_fs_x__packed_base_rev(fs, revision);
          key.second = offset;

          SVN_ERR(svn_cache__get_partial((void **)count, &is_cached,
                                         ffd->noderevs_container_cache, &key,
                                         svn_fs_x__mergeinfo_count_get_func,
                                         &sub_item, scratch_pool));
          if (is_cached)
            return SVN_NO_ERROR;
        }
    }



  SVN_ERR(svn_fs_x__get_node_revision(&noderev, fs, id, scratch_pool,
                                      scratch_pool));
  *count = noderev->mergeinfo_count;

  return SVN_NO_ERROR;
}
