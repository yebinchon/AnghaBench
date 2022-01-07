
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int * skip_uri_scheme (char const*) ;

svn_boolean_t
svn_path_is_url(const char *path)
{
  return skip_uri_scheme(path) != ((void*)0);
}
