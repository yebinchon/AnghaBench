
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int * uri_skip_ancestor (char const*,char const*) ;

svn_boolean_t
svn_uri__is_ancestor(const char *parent_uri, const char *child_uri)
{
  return uri_skip_ancestor(parent_uri, child_uri) != ((void*)0);
}
