
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_x__revision_file_t ;
typedef int svn_fs_x__reps_t ;
typedef int svn_fs_x__rep_extractor_t ;
struct TYPE_15__ {int second; int revision; } ;
typedef TYPE_2__ svn_fs_x__pair_cache_key_t ;
struct TYPE_16__ {int offset; TYPE_1__* items; } ;
typedef TYPE_3__ svn_fs_x__p2l_entry_t ;
struct TYPE_17__ {int reps_container_cache; } ;
typedef TYPE_4__ svn_fs_x__data_t ;
struct TYPE_18__ {TYPE_4__* fsap_data; } ;
typedef TYPE_5__ svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;
struct TYPE_14__ {int change_set; } ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int read_item (int **,TYPE_5__*,int *,TYPE_3__*,int *) ;
 int svn_cache__has_key (scalar_t__*,int ,TYPE_2__*,int *) ;
 int svn_cache__set (int ,TYPE_2__*,int *,int *) ;
 int svn_fs_x__get_revnum (int ) ;
 int svn_fs_x__packed_base_rev (TYPE_5__*,int ) ;
 int svn_fs_x__read_reps_container (int **,int *,int *,int *) ;
 int svn_fs_x__reps_get (int **,TYPE_5__*,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
block_read_reps_container(svn_fs_x__rep_extractor_t **extractor,
                          svn_fs_t *fs,
                          svn_fs_x__revision_file_t *rev_file,
                          svn_fs_x__p2l_entry_t* entry,
                          apr_uint32_t sub_item,
                          svn_boolean_t must_read,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_fs_x__reps_t *container;
  svn_stream_t *stream;
  svn_fs_x__pair_cache_key_t key;
  svn_revnum_t revision = svn_fs_x__get_revnum(entry->items[0].change_set);

  key.revision = svn_fs_x__packed_base_rev(fs, revision);
  key.second = entry->offset;


  if (!must_read)
    {
      svn_boolean_t is_cached = FALSE;
      SVN_ERR(svn_cache__has_key(&is_cached, ffd->reps_container_cache,
                                 &key, scratch_pool));
      if (is_cached)
        return SVN_NO_ERROR;
    }

  SVN_ERR(read_item(&stream, fs, rev_file, entry, scratch_pool));


  SVN_ERR(svn_fs_x__read_reps_container(&container, stream, result_pool,
                                        scratch_pool));



  if (must_read)
    SVN_ERR(svn_fs_x__reps_get(extractor, fs, container, sub_item,
                               result_pool));

  SVN_ERR(svn_cache__set(ffd->reps_container_cache, &key, container,
                         scratch_pool));

  return SVN_NO_ERROR;
}
