
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int internal_style (char const*,int *) ;
 char const* svn_relpath_canonicalize (int ,int *) ;

const char *
svn_relpath__internal_style(const char *relpath,
                            apr_pool_t *pool)
{
  return svn_relpath_canonicalize(internal_style(relpath, pool), pool);
}
