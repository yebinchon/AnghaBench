
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int FALSE ;
 int * do_filter (int *,void*,int ,int *) ;

__attribute__((used)) static svn_error_t *
subcommand_include(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  return do_filter(os, baton, FALSE, pool);
}
