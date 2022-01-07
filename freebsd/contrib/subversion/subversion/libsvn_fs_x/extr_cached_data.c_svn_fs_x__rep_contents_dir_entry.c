
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int svn_fs_x__noderev_t ;
typedef int svn_fs_x__id_t ;
struct TYPE_12__ {char const* name; scalar_t__ out_of_date; int hint; int txn_filesize; } ;
typedef TYPE_1__ svn_fs_x__ede_baton_t ;
struct TYPE_13__ {int name; } ;
typedef TYPE_2__ svn_fs_x__dirent_t ;
struct TYPE_14__ {TYPE_6__* entries; } ;
typedef TYPE_3__ svn_fs_x__dir_data_t ;
typedef int svn_fs_t ;
typedef int svn_filesize_t ;
typedef int svn_error_t ;
typedef int svn_cache__t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_15__ {int nelts; } ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_pmemdup (int *,TYPE_2__*,int) ;
 int apr_pstrdup (int *,int ) ;
 int get_dir_contents (TYPE_3__*,int *,int *,int *,int *) ;
 int get_txn_dir_info (int *,int *,int *,int *) ;
 int * locate_dir_cache (int *,int *,int *) ;
 int svn_cache__get_partial (void**,scalar_t__*,int *,int *,int ,TYPE_1__*,int *) ;
 scalar_t__ svn_cache__is_cachable (int *,int) ;
 int svn_cache__set (int *,int *,TYPE_3__*,int *) ;
 int svn_fs_x__extract_dir_entry ;
 TYPE_2__* svn_fs_x__find_dir_entry (TYPE_6__*,char const*,int *) ;

svn_error_t *
svn_fs_x__rep_contents_dir_entry(svn_fs_x__dirent_t **dirent,
                                 svn_fs_t *fs,
                                 svn_fs_x__noderev_t *noderev,
                                 const char *name,
                                 apr_size_t *hint,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  svn_boolean_t found = FALSE;


  svn_fs_x__id_t key;
  svn_cache__t *cache = locate_dir_cache(fs, &key, noderev);
  svn_fs_x__ede_baton_t baton;

  svn_filesize_t filesize;
  SVN_ERR(get_txn_dir_info(&filesize, fs, noderev, scratch_pool));


  baton.hint = *hint;
  baton.name = name;
  baton.txn_filesize = filesize;

  SVN_ERR(svn_cache__get_partial((void **)dirent,
                                 &found,
                                 cache,
                                 &key,
                                 svn_fs_x__extract_dir_entry,
                                 &baton,
                                 result_pool));


  if (found)
    *hint = baton.hint;


  if (! found || baton.out_of_date)
    {
      svn_fs_x__dirent_t *entry;
      svn_fs_x__dirent_t *entry_copy = ((void*)0);
      svn_fs_x__dir_data_t dir;


      SVN_ERR(get_dir_contents(&dir, fs, noderev, scratch_pool,
                               scratch_pool));






      if (cache && svn_cache__is_cachable(cache, 150 * dir.entries->nelts))
        SVN_ERR(svn_cache__set(cache, &key, &dir, scratch_pool));


      entry = svn_fs_x__find_dir_entry(dir.entries, name, ((void*)0));
      if (entry)
        {
          entry_copy = apr_pmemdup(result_pool, entry, sizeof(*entry_copy));
          entry_copy->name = apr_pstrdup(result_pool, entry->name);
        }

      *dirent = entry_copy;
    }

  return SVN_NO_ERROR;
}
