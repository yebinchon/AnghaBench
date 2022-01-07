
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_temp_serializer__context_t ;
struct TYPE_5__ {size_t len; void* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_string_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int count; char** keys; int * values; } ;
typedef TYPE_2__ properties_data_t ;
typedef int properties ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * SVN_NO_ERROR ;
 int apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int apr_hash_this_val (int *) ;
 void* apr_palloc (int *,int) ;
 int serialize_cstring_array (int *,char***,int) ;
 int serialize_svn_string_array (int *,int **,int) ;
 TYPE_1__* svn_temp_serializer__get (int *) ;
 int * svn_temp_serializer__init (TYPE_2__*,int,int,int *) ;

svn_error_t *
svn_fs_fs__serialize_properties(void **data,
                                apr_size_t *data_len,
                                void *in,
                                apr_pool_t *pool)
{
  apr_hash_t *hash = in;
  properties_data_t properties;
  svn_temp_serializer__context_t *context;
  apr_hash_index_t *hi;
  svn_stringbuf_t *serialized;
  apr_size_t i;


  properties.count = apr_hash_count(hash);
  properties.keys = apr_palloc(pool, sizeof(const char*) * (properties.count + 1));
  properties.values = apr_palloc(pool, sizeof(const svn_string_t *) * properties.count);


  for (hi = apr_hash_first(pool, hash), i=0; hi; hi = apr_hash_next(hi), ++i)
    {
      properties.keys[i] = apr_hash_this_key(hi);
      properties.values[i] = apr_hash_this_val(hi);
    }


  context = svn_temp_serializer__init(&properties,
                                      sizeof(properties),
                                      properties.count * 100,
                                      pool);

  properties.keys[i] = "";
  serialize_cstring_array(context, &properties.keys, properties.count + 1);
  serialize_svn_string_array(context, &properties.values, properties.count);


  serialized = svn_temp_serializer__get(context);

  *data = serialized->data;
  *data_len = serialized->len;

  return SVN_NO_ERROR;
}
