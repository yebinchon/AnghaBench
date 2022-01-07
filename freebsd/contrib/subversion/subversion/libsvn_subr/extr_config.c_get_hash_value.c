
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef scalar_t__ svn_boolean_t ;
typedef size_t apr_size_t ;
typedef int apr_hash_t ;


 void* apr_hash_get (int *,char const*,size_t) ;
 scalar_t__ apr_tolower (char const) ;
 size_t strlen (char const*) ;
 int svn_stringbuf_ensure (TYPE_1__*,size_t) ;

__attribute__((used)) static void *
get_hash_value(apr_hash_t *hash,
               svn_stringbuf_t *buffer,
               const char *key,
               svn_boolean_t case_sensitive)
{
  apr_size_t i;
  apr_size_t len = strlen(key);

  if (case_sensitive)
    return apr_hash_get(hash, key, len);

  svn_stringbuf_ensure(buffer, len);
  for (i = 0; i < len; ++i)
    buffer->data[i] = (char)apr_tolower(key[i]);

  return apr_hash_get(hash, buffer->data, len);
}
