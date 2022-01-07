
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int TRUE ;
 int * svn_error_trace (int ) ;
 int svn_fs_revision_proplist2 (int **,int *,int ,int ,int *,int *) ;

svn_error_t *
svn_fs_revision_proplist(apr_hash_t **table_p,
                         svn_fs_t *fs,
                         svn_revnum_t rev,
                         apr_pool_t *pool)
{
  return svn_error_trace(
           svn_fs_revision_proplist2(table_p, fs, rev, TRUE, pool, pool));
}
