
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* data; int len; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef scalar_t__ apr_byte_t ;


 int SVN_ERR_FS_CORRUPT_PROPLIST ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_make (int *) ;
 int apr_hash_set (int *,char const*,int,TYPE_1__*) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int strlen (char const*) ;
 scalar_t__* svn__decode_uint (int*,scalar_t__ const*,scalar_t__ const*) ;
 int * svn_error_createf (int ,int *,char*) ;

svn_error_t *
svn_fs_x__parse_properties(apr_hash_t **properties,
                           const svn_string_t *content,
                           apr_pool_t *result_pool)
{
  const apr_byte_t *p = (const apr_byte_t *)content->data;
  const apr_byte_t *end = p + content->len;
  apr_uint64_t count;

  *properties = apr_hash_make(result_pool);


  p = svn__decode_uint(&count, p, end);






  while (p < end)
    {
      apr_uint64_t value_len;
      svn_string_t *value;

      const char *key = (const char *)p;



      apr_size_t key_len = strlen(key);
      p += key_len + 1;
      if (key[key_len])
        return svn_error_createf(SVN_ERR_FS_CORRUPT_PROPLIST, ((void*)0),
                                 "Property name not NUL terminated");

      if (p >= end)
        return svn_error_createf(SVN_ERR_FS_CORRUPT_PROPLIST, ((void*)0),
                                 "Property value missing");
      p = svn__decode_uint(&value_len, p, end);
      if (value_len >= (end - p))
        return svn_error_createf(SVN_ERR_FS_CORRUPT_PROPLIST, ((void*)0),
                                 "Property value too long");

      value = apr_pcalloc(result_pool, sizeof(*value));
      value->data = (const char *)p;
      value->len = (apr_size_t)value_len;
      if (p[value->len])
        return svn_error_createf(SVN_ERR_FS_CORRUPT_PROPLIST, ((void*)0),
                                 "Property value not NUL terminated");

      p += value->len + 1;

      apr_hash_set(*properties, key, key_len, value);
    }


  if ((apr_uint64_t)apr_hash_count(*properties) != count)
    return svn_error_createf(SVN_ERR_FS_CORRUPT_PROPLIST, ((void*)0),
                             "Property count mismatch");

  return SVN_NO_ERROR;
}
