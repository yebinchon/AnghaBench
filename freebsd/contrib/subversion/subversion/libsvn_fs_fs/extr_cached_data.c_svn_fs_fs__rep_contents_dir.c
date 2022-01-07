
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_fs_t ;
struct TYPE_9__ {scalar_t__ txn_filesize; TYPE_3__* entries; } ;
typedef TYPE_1__ svn_fs_fs__dir_data_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int svn_error_t ;
typedef int svn_cache__t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_10__ {int member_0; } ;
typedef TYPE_2__ pair_cache_key_t ;
typedef int node_revision_t ;
typedef int apr_pool_t ;
struct TYPE_11__ {int nelts; } ;
typedef TYPE_3__ apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int get_dir_contents (TYPE_1__*,int *,int *,int *,int *) ;
 int get_txn_dir_info (scalar_t__*,int *,int *,int *) ;
 int * locate_dir_cache (int *,void const**,TYPE_2__*,int *,int *) ;
 int svn_cache__get (void**,scalar_t__*,int *,void const*,int *) ;
 scalar_t__ svn_cache__is_cachable (int *,int) ;
 int svn_cache__set (int *,void const*,TYPE_1__*,int *) ;

svn_error_t *
svn_fs_fs__rep_contents_dir(apr_array_header_t **entries_p,
                            svn_fs_t *fs,
                            node_revision_t *noderev,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  pair_cache_key_t pair_key = { 0 };
  const void *key;
  svn_fs_fs__dir_data_t *dir;


  svn_cache__t *cache = locate_dir_cache(fs, &key, &pair_key, noderev,
                                         scratch_pool);
  if (cache)
    {
      svn_boolean_t found;

      SVN_ERR(svn_cache__get((void **)&dir, &found, cache, key,
                             result_pool));
      if (found)
        {


          svn_filesize_t filesize;
          SVN_ERR(get_txn_dir_info(&filesize, fs, noderev, scratch_pool));

          if (filesize == dir->txn_filesize)
            {

              *entries_p = dir->entries;
              return SVN_NO_ERROR;
            }
        }
    }


  dir = apr_pcalloc(scratch_pool, sizeof(*dir));
  SVN_ERR(get_dir_contents(dir, fs, noderev, result_pool, scratch_pool));
  *entries_p = dir->entries;






  if (cache && svn_cache__is_cachable(cache, 150 * dir->entries->nelts))
    SVN_ERR(svn_cache__set(cache, key, dir, scratch_pool));

  return SVN_NO_ERROR;
}
