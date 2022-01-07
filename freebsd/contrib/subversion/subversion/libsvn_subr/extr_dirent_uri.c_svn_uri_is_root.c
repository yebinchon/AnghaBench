
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef scalar_t__ apr_size_t ;


 int assert (int ) ;
 int svn_uri_is_canonical (char const*,int *) ;
 scalar_t__ uri_schema_root_length (char const*,scalar_t__) ;

svn_boolean_t
svn_uri_is_root(const char *uri, apr_size_t len)
{
  assert(svn_uri_is_canonical(uri, ((void*)0)));
  return (len == uri_schema_root_length(uri, len));
}
