
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* data; int len; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_revnum_t ;
struct TYPE_6__ {int fs; } ;
typedef TYPE_2__ svn_repos_t ;
typedef int svn_fs_txn_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_AUTHOR ;
 int strlen (char const*) ;
 int svn_fs_begin_txn2 (int **,int ,int ,int ,int *) ;
 int svn_fs_change_txn_prop (int *,int ,TYPE_1__*,int *) ;

svn_error_t *
svn_repos_fs_begin_txn_for_update(svn_fs_txn_t **txn_p,
                                  svn_repos_t *repos,
                                  svn_revnum_t rev,
                                  const char *author,
                                  apr_pool_t *pool)
{



  SVN_ERR(svn_fs_begin_txn2(txn_p, repos->fs, rev, 0, pool));





  if (author)
    {
      svn_string_t val;
      val.data = author;
      val.len = strlen(author);
      SVN_ERR(svn_fs_change_txn_prop(*txn_p, SVN_PROP_REVISION_AUTHOR,
                                     &val, pool));
    }

  return SVN_NO_ERROR;
}
