
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_ENTRY_COMMITTED_DATE ;
 int SVN_PROP_ENTRY_COMMITTED_REV ;
 int SVN_PROP_ENTRY_LAST_AUTHOR ;
 int SVN_PROP_ENTRY_UUID ;
 int svn_fs_node_proplist (int **,int *,char const*,int *) ;
 int svn_hash_sets (int *,int ,int *) ;
 int svn_repos_get_committed_info (int *,char const**,char const**,int *,char const*,int *) ;
 int * svn_string_create (char const*,int *) ;
 int * svn_string_createf (int *,char*,int ) ;

__attribute__((used)) static svn_error_t *
get_node_props(apr_hash_t **props,
               svn_fs_root_t *root,
               const char *path,
               const char *uuid,
               apr_pool_t *result_pool,
               apr_pool_t *scratch_pool)
{
  svn_revnum_t cmt_rev;
  const char *cmt_date, *cmt_author;


  SVN_ERR(svn_fs_node_proplist(props, root, path, result_pool));




  SVN_ERR(svn_repos_get_committed_info(&cmt_rev, &cmt_date,
                                       &cmt_author, root, path,
                                       scratch_pool));

  svn_hash_sets(*props, SVN_PROP_ENTRY_COMMITTED_REV,
                svn_string_createf(result_pool, "%ld", cmt_rev));
  svn_hash_sets(*props, SVN_PROP_ENTRY_COMMITTED_DATE, cmt_date ?
                svn_string_create(cmt_date, result_pool) : ((void*)0));
  svn_hash_sets(*props, SVN_PROP_ENTRY_LAST_AUTHOR, cmt_author ?
                svn_string_create(cmt_author, result_pool) : ((void*)0));
  svn_hash_sets(*props, SVN_PROP_ENTRY_UUID,
                svn_string_create(uuid, result_pool));



  return SVN_NO_ERROR;
}
