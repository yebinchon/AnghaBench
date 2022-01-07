
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ prejfile; scalar_t__ conflict_wrk; scalar_t__ conflict_new; scalar_t__ conflict_old; } ;
typedef TYPE_1__ svn_wc_entry_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* svn_dirent_join (char const*,scalar_t__,int *) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_file ;

svn_error_t *
svn_wc_conflicted_p(svn_boolean_t *text_conflicted_p,
                    svn_boolean_t *prop_conflicted_p,
                    const char *dir_path,
                    const svn_wc_entry_t *entry,
                    apr_pool_t *pool)
{
  svn_node_kind_t kind;
  const char *path;

  *text_conflicted_p = FALSE;
  *prop_conflicted_p = FALSE;

  if (entry->conflict_old)
    {
      path = svn_dirent_join(dir_path, entry->conflict_old, pool);
      SVN_ERR(svn_io_check_path(path, &kind, pool));
      *text_conflicted_p = (kind == svn_node_file);
    }

  if ((! *text_conflicted_p) && (entry->conflict_new))
    {
      path = svn_dirent_join(dir_path, entry->conflict_new, pool);
      SVN_ERR(svn_io_check_path(path, &kind, pool));
      *text_conflicted_p = (kind == svn_node_file);
    }

  if ((! *text_conflicted_p) && (entry->conflict_wrk))
    {
      path = svn_dirent_join(dir_path, entry->conflict_wrk, pool);
      SVN_ERR(svn_io_check_path(path, &kind, pool));
      *text_conflicted_p = (kind == svn_node_file);
    }

  if (entry->prejfile)
    {
      path = svn_dirent_join(dir_path, entry->prejfile, pool);
      SVN_ERR(svn_io_check_path(path, &kind, pool));
      *prop_conflicted_p = (kind == svn_node_file);
    }

  return SVN_NO_ERROR;
}
