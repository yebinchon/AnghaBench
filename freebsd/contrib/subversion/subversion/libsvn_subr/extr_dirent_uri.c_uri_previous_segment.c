
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t apr_size_t ;


 size_t uri_schema_root_length (char const*,size_t) ;

__attribute__((used)) static apr_size_t
uri_previous_segment(const char *uri,
                     apr_size_t len)
{
  apr_size_t root_length;
  apr_size_t i = len;
  if (len == 0)
    return 0;

  root_length = uri_schema_root_length(uri, len);

  --i;
  while (len > root_length && uri[i] != '/')
    --i;

  if (i == 0 && len > 1 && *uri == '/')
    return 1;

  return i;
}
