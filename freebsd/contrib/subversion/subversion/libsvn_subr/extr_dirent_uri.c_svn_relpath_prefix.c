
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* apr_pstrmemdup (int *,char const*,int) ;
 int assert (int ) ;
 int relpath_is_canonical (char const*) ;

const char *
svn_relpath_prefix(const char *relpath,
                   int max_components,
                   apr_pool_t *result_pool)
{
  const char *end;
  assert(relpath_is_canonical(relpath));

  if (max_components <= 0)
    return "";

  for (end = relpath; *end; end++)
    {
      if (*end == '/')
        {
          if (!--max_components)
            break;
        }
    }

  return apr_pstrmemdup(result_pool, relpath, end-relpath);
}
