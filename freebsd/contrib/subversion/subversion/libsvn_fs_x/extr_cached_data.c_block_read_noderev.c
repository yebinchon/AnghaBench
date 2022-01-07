
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_fs_x__revision_file_t ;
typedef int svn_fs_x__pair_cache_key_t ;
struct TYPE_8__ {int item_count; } ;
typedef TYPE_1__ svn_fs_x__p2l_entry_t ;
typedef int svn_fs_x__noderev_t ;
struct TYPE_9__ {int node_revision_cache; } ;
typedef TYPE_2__ svn_fs_x__data_t ;
struct TYPE_10__ {TYPE_2__* fsap_data; } ;
typedef TYPE_3__ svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int read_item (int **,TYPE_3__*,int *,TYPE_1__*,int *) ;
 int svn_cache__has_key (scalar_t__*,int ,int *,int *) ;
 int svn_cache__set (int ,int *,int *,int *) ;
 int svn_fs_x__read_noderev (int **,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
block_read_noderev(svn_fs_x__noderev_t **noderev_p,
                   svn_fs_t *fs,
                   svn_fs_x__revision_file_t *rev_file,
                   svn_fs_x__p2l_entry_t* entry,
                   svn_fs_x__pair_cache_key_t *key,
                   svn_boolean_t must_read,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_stream_t *stream;


  SVN_ERR_ASSERT(entry->item_count == 1);


  if (!must_read)
    {
      svn_boolean_t is_cached = FALSE;
      SVN_ERR(svn_cache__has_key(&is_cached, ffd->node_revision_cache, key,
                                 scratch_pool));
      if (is_cached)
        return SVN_NO_ERROR;
    }

  SVN_ERR(read_item(&stream, fs, rev_file, entry, scratch_pool));



  SVN_ERR(svn_fs_x__read_noderev(noderev_p, stream, result_pool,
                                 scratch_pool));
  SVN_ERR(svn_cache__set(ffd->node_revision_cache, key, *noderev_p,
                         scratch_pool));

  return SVN_NO_ERROR;
}
