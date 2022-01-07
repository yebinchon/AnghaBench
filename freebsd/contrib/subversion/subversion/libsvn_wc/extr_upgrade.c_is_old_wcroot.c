
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ schedule; scalar_t__ depth; scalar_t__ deleted; scalar_t__ absent; } ;
typedef TYPE_1__ svn_wc_entry_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR_WC_INVALID_OP_ON_CWD ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int strlen (char const*) ;
 scalar_t__ svn_depth_exclude ;
 scalar_t__ svn_dirent_is_root (char const*,int ) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_dirent_split (char const**,char const**,char const*,int *) ;
 int svn_error_clear (int *) ;
 int * svn_error_createf (int ,int *,int ,int ,...) ;
 TYPE_1__* svn_hash_gets (int *,char const*) ;
 int * svn_wc__read_entries_old (int **,char const*,int *,int *) ;
 scalar_t__ svn_wc_schedule_add ;

__attribute__((used)) static svn_error_t *
is_old_wcroot(const char *local_abspath,
              apr_pool_t *scratch_pool)
{
  apr_hash_t *entries;
  const char *parent_abspath, *name;
  svn_wc_entry_t *entry;
  svn_error_t *err = svn_wc__read_entries_old(&entries, local_abspath,
                                              scratch_pool, scratch_pool);
  if (err)
    {
      return svn_error_createf(
        SVN_ERR_WC_INVALID_OP_ON_CWD, err,
        _("Can't upgrade '%s' as it is not a working copy"),
        svn_dirent_local_style(local_abspath, scratch_pool));
    }
  else if (svn_dirent_is_root(local_abspath, strlen(local_abspath)))
    return SVN_NO_ERROR;

  svn_dirent_split(&parent_abspath, &name, local_abspath, scratch_pool);

  err = svn_wc__read_entries_old(&entries, parent_abspath,
                                 scratch_pool, scratch_pool);
  if (err)
    {
      svn_error_clear(err);
      return SVN_NO_ERROR;
    }

  entry = svn_hash_gets(entries, name);
  if (!entry
      || entry->absent
      || (entry->deleted && entry->schedule != svn_wc_schedule_add)
      || entry->depth == svn_depth_exclude)
    {
      return SVN_NO_ERROR;
    }

  while (!svn_dirent_is_root(parent_abspath, strlen(parent_abspath)))
    {
      svn_dirent_split(&parent_abspath, &name, parent_abspath, scratch_pool);
      err = svn_wc__read_entries_old(&entries, parent_abspath,
                                     scratch_pool, scratch_pool);
      if (err)
        {
          svn_error_clear(err);
          parent_abspath = svn_dirent_join(parent_abspath, name, scratch_pool);
          break;
        }
      entry = svn_hash_gets(entries, name);
      if (!entry
          || entry->absent
          || (entry->deleted && entry->schedule != svn_wc_schedule_add)
          || entry->depth == svn_depth_exclude)
        {
          parent_abspath = svn_dirent_join(parent_abspath, name, scratch_pool);
          break;
        }
    }

  return svn_error_createf(
    SVN_ERR_WC_INVALID_OP_ON_CWD, ((void*)0),
    _("Can't upgrade '%s' as it is not a working copy root,"
      " the root is '%s'"),
    svn_dirent_local_style(local_abspath, scratch_pool),
    svn_dirent_local_style(parent_abspath, scratch_pool));
}
