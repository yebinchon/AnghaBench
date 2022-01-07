
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int svn_fs_t ;
struct TYPE_13__ {TYPE_7__* entries; } ;
typedef TYPE_1__ svn_fs_fs__dir_data_t ;
struct TYPE_14__ {int kind; int id; int name; } ;
typedef TYPE_2__ svn_fs_dirent_t ;
typedef int svn_filesize_t ;
typedef int svn_error_t ;
typedef int svn_cache__t ;
typedef int svn_boolean_t ;
struct TYPE_15__ {int member_0; } ;
typedef TYPE_3__ pair_cache_key_t ;
typedef int node_revision_t ;
struct TYPE_16__ {char const* name; scalar_t__ out_of_date; int txn_filesize; } ;
typedef TYPE_4__ extract_dir_entry_baton_t ;
typedef int apr_pool_t ;
struct TYPE_17__ {int nelts; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_palloc (int *,int) ;
 int apr_pstrdup (int *,int ) ;
 int get_dir_contents (TYPE_1__*,int *,int *,int *,int *) ;
 int get_txn_dir_info (int *,int *,int *,int *) ;
 int * locate_dir_cache (int *,void const**,TYPE_3__*,int *,int *) ;
 int svn_cache__get_partial (void**,int *,int *,void const*,int ,TYPE_4__*,int *) ;
 scalar_t__ svn_cache__is_cachable (int *,int) ;
 int svn_cache__set (int *,void const*,TYPE_1__*,int *) ;
 int svn_fs_fs__extract_dir_entry ;
 TYPE_2__* svn_fs_fs__find_dir_entry (TYPE_7__*,char const*,int *) ;
 int svn_fs_fs__id_copy (int ,int *) ;

svn_error_t *
svn_fs_fs__rep_contents_dir_entry(svn_fs_dirent_t **dirent,
                                  svn_fs_t *fs,
                                  node_revision_t *noderev,
                                  const char *name,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)
{
  extract_dir_entry_baton_t baton;
  svn_boolean_t found = FALSE;


  pair_cache_key_t pair_key = { 0 };
  const void *key;
  svn_cache__t *cache = locate_dir_cache(fs, &key, &pair_key, noderev,
                                         scratch_pool);
  if (cache)
    {
      svn_filesize_t filesize;
      SVN_ERR(get_txn_dir_info(&filesize, fs, noderev, scratch_pool));


      baton.txn_filesize = filesize;
      baton.name = name;
      SVN_ERR(svn_cache__get_partial((void **)dirent,
                                     &found,
                                     cache,
                                     key,
                                     svn_fs_fs__extract_dir_entry,
                                     &baton,
                                     result_pool));
    }


  if (! found || baton.out_of_date)
    {
      svn_fs_dirent_t *entry;
      svn_fs_dirent_t *entry_copy = ((void*)0);
      svn_fs_fs__dir_data_t dir;


      SVN_ERR(get_dir_contents(&dir, fs, noderev, scratch_pool,
                               scratch_pool));






      if (cache && svn_cache__is_cachable(cache, 150 * dir.entries->nelts))
        SVN_ERR(svn_cache__set(cache, key, &dir, scratch_pool));


      entry = svn_fs_fs__find_dir_entry(dir.entries, name, ((void*)0));
      if (entry)
        {
          entry_copy = apr_palloc(result_pool, sizeof(*entry_copy));
          entry_copy->name = apr_pstrdup(result_pool, entry->name);
          entry_copy->id = svn_fs_fs__id_copy(entry->id, result_pool);
          entry_copy->kind = entry->kind;
        }

      *dirent = entry_copy;
    }

  return SVN_NO_ERROR;
}
