
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_AUTHOR ;
 int SVN_PROP_REVISION_DATE ;
 int TRUE ;
 int svn_fs_node_created_rev (int *,int *,char const*,int *) ;
 int svn_fs_revision_proplist2 (int **,int *,int ,int ,int *,int *) ;
 int * svn_fs_root_fs (int *) ;
 TYPE_1__* svn_hash_gets (int *,int ) ;

svn_error_t *
svn_repos_get_committed_info(svn_revnum_t *committed_rev,
                             const char **committed_date,
                             const char **last_author,
                             svn_fs_root_t *root,
                             const char *path,
                             apr_pool_t *pool)
{
  apr_hash_t *revprops;

  svn_fs_t *fs = svn_fs_root_fs(root);




  svn_string_t *committed_date_s, *last_author_s;


  SVN_ERR(svn_fs_node_created_rev(committed_rev, root, path, pool));


  SVN_ERR(svn_fs_revision_proplist2(&revprops, fs, *committed_rev, TRUE,
                                    pool, pool));


  committed_date_s = svn_hash_gets(revprops, SVN_PROP_REVISION_DATE);
  last_author_s = svn_hash_gets(revprops, SVN_PROP_REVISION_AUTHOR);

  *committed_date = committed_date_s ? committed_date_s->data : ((void*)0);
  *last_author = last_author_s ? last_author_s->data : ((void*)0);

  return SVN_NO_ERROR;
}
