
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int list_dblogs (int *,void*,int ,int *) ;

__attribute__((used)) static svn_error_t *
subcommand_list_dblogs(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  SVN_ERR(list_dblogs(os, baton, FALSE, pool));
  return SVN_NO_ERROR;
}
