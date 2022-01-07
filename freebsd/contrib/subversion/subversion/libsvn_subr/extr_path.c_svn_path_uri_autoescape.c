
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int uri_autoescape_chars ;
 char const* uri_escape (char const*,int ,int *) ;

const char *
svn_path_uri_autoescape(const char *uri, apr_pool_t *pool)
{
  return uri_escape(uri, uri_autoescape_chars, pool);
}
