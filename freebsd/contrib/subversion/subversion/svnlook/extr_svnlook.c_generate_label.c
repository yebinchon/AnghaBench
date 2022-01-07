
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ svn_string_t ;
typedef char const* svn_revnum_t ;
typedef int svn_fs_txn_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 char* SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_DATE ;
 int TRUE ;
 char* apr_psprintf (int *,char*,char const*,char const*,...) ;
 scalar_t__ svn_fs_is_revision_root (int *) ;
 int svn_fs_open_txn (int **,int *,char const*,int *) ;
 int svn_fs_revision_prop2 (TYPE_1__**,int *,char const*,int ,int ,int *,int *) ;
 char* svn_fs_revision_root_revision (int *) ;
 int * svn_fs_root_fs (int *) ;
 int svn_fs_txn_prop (TYPE_1__**,int *,int ,int *) ;
 char* svn_fs_txn_root_name (int *,int *) ;

__attribute__((used)) static svn_error_t *
generate_label(const char **label,
               svn_fs_root_t *root,
               const char *path,
               apr_pool_t *pool)
{
  svn_string_t *date;
  const char *datestr;
  const char *name = ((void*)0);
  svn_revnum_t rev = SVN_INVALID_REVNUM;

  if (root)
    {
      svn_fs_t *fs = svn_fs_root_fs(root);
      if (svn_fs_is_revision_root(root))
        {
          rev = svn_fs_revision_root_revision(root);
          SVN_ERR(svn_fs_revision_prop2(&date, fs, rev,
                                        SVN_PROP_REVISION_DATE, TRUE,
                                        pool, pool));
        }
      else
        {
          svn_fs_txn_t *txn;
          name = svn_fs_txn_root_name(root, pool);
          SVN_ERR(svn_fs_open_txn(&txn, fs, name, pool));
          SVN_ERR(svn_fs_txn_prop(&date, txn, SVN_PROP_REVISION_DATE, pool));
        }
    }
  else
    {
      rev = 0;
      date = ((void*)0);
    }

  if (date)
    datestr = apr_psprintf(pool, "%.10s %.8s UTC", date->data, date->data + 11);
  else
    datestr = "                       ";

  if (name)
    *label = apr_psprintf(pool, "%s\t%s (txn %s)",
                          path, datestr, name);
  else
    *label = apr_psprintf(pool, "%s\t%s (rev %ld)",
                          path, datestr, rev);
  return SVN_NO_ERROR;
}
