
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int * svn_path_cstring_from_utf8 (char const**,char const*,int *) ;

__attribute__((used)) static svn_error_t *
cstring_from_utf8(const char **path_apr,
                  const char *path_utf8,
                  apr_pool_t *pool)
{




  return svn_path_cstring_from_utf8(path_apr, path_utf8, pool);

}
