
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;
typedef int apr_pool_t ;


 char* apr_pstrmemdup (int *,char const*,int ) ;
 int assert (int ) ;
 int relpath_is_canonical (char const*) ;
 int relpath_previous_segment (char const*,int ) ;
 int strlen (char const*) ;

char *
svn_relpath_dirname(const char *relpath,
                    apr_pool_t *pool)
{
  apr_size_t len = strlen(relpath);

  assert(relpath_is_canonical(relpath));

  return apr_pstrmemdup(pool, relpath,
                        relpath_previous_segment(relpath, len));
}
