
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_commit_item3_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int * svn_client_commit_item3_create (int *) ;

svn_error_t *
svn_client_commit_item_create(const svn_client_commit_item3_t **item,
                              apr_pool_t *pool)
{
  *item = svn_client_commit_item3_create(pool);
  return SVN_NO_ERROR;
}
