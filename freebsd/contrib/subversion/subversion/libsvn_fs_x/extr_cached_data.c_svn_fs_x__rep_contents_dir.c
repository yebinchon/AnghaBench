
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_fs_x__noderev_t ;
typedef int svn_fs_x__id_t ;
struct TYPE_7__ {scalar_t__ txn_filesize; TYPE_2__* entries; } ;
typedef TYPE_1__ svn_fs_x__dir_data_t ;
typedef int svn_fs_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int svn_error_t ;
typedef int svn_cache__t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {int nelts; } ;
typedef TYPE_2__ apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int get_dir_contents (TYPE_1__*,int *,int *,int *,int *) ;
 int get_txn_dir_info (scalar_t__*,int *,int *,int *) ;
 int * locate_dir_cache (int *,int *,int *) ;
 int svn_cache__get (void**,scalar_t__*,int *,int *,int *) ;
 scalar_t__ svn_cache__is_cachable (int *,int) ;
 int svn_cache__set (int *,int *,TYPE_1__*,int *) ;

svn_error_t *
svn_fs_x__rep_contents_dir(apr_array_header_t **entries_p,
                           svn_fs_t *fs,
                           svn_fs_x__noderev_t *noderev,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  svn_fs_x__id_t key;
  svn_fs_x__dir_data_t *dir;


  svn_cache__t *cache = locate_dir_cache(fs, &key, noderev);
  svn_boolean_t found;

  SVN_ERR(svn_cache__get((void **)&dir, &found, cache, &key, result_pool));
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


  dir = apr_pcalloc(scratch_pool, sizeof(*dir));
  SVN_ERR(get_dir_contents(dir, fs, noderev, result_pool, scratch_pool));
  *entries_p = dir->entries;






  if (svn_cache__is_cachable(cache, 100 * dir->entries->nelts))
    SVN_ERR(svn_cache__set(cache, &key, dir, scratch_pool));

  return SVN_NO_ERROR;
}
