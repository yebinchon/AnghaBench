
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* apr_pstrdup (int *,char const*) ;
 int svn_uri__char_validity ;
 char* uri_escape (char const*,int ,int *) ;

const char *
svn_path_uri_encode(const char *path, apr_pool_t *pool)
{
  const char *ret;

  ret = uri_escape(path, svn_uri__char_validity, pool);


  if (ret == path)
    return apr_pstrdup(pool, path);
  else
    return ret;
}
