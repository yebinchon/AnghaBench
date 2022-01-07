
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t apr_size_t ;


 int assert (int ) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 int svn_uri_is_canonical (char const*,int *) ;

__attribute__((used)) static const char *
uri_skip_ancestor(const char *parent_uri,
                  const char *child_uri)
{
  apr_size_t len = strlen(parent_uri);

  assert(svn_uri_is_canonical(parent_uri, ((void*)0)));
  assert(svn_uri_is_canonical(child_uri, ((void*)0)));

  if (0 != strncmp(parent_uri, child_uri, len))
    return ((void*)0);

  if (child_uri[len] == 0)
    return "";

  if (child_uri[len] == '/')
    return child_uri + len + 1;

  return ((void*)0);
}
