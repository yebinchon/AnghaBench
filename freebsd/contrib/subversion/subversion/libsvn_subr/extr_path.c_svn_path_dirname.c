
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;
typedef int apr_pool_t ;


 char* apr_pstrmemdup (int *,char const*,int ) ;
 int assert (int ) ;
 int previous_segment (char const*,int ) ;
 int strlen (char const*) ;
 int svn_path_is_canonical_internal (char const*,int *) ;

char *
svn_path_dirname(const char *path, apr_pool_t *pool)
{
  apr_size_t len = strlen(path);

  assert(svn_path_is_canonical_internal(path, pool));

  return apr_pstrmemdup(pool, path, previous_segment(path, len));
}
