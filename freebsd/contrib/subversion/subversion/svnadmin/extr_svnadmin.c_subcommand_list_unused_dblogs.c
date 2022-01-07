
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int list_dblogs (int *,void*,int ,int *) ;
 int parse_args (int *,int *,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
subcommand_list_unused_dblogs(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{

  SVN_ERR(parse_args(((void*)0), os, 0, 0, pool));

  SVN_ERR(list_dblogs(os, baton, TRUE, pool));
  return SVN_NO_ERROR;
}
