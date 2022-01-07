
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_8__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef int serf_bucket_alloc_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_1__* svn_base64_encode_string2 (TYPE_1__ const*,int ,int *) ;
 TYPE_1__* svn_string_create_from_buf (int *,int *) ;
 int svn_xml_escape_cdata_string (int **,TYPE_1__ const*,int *) ;
 scalar_t__ svn_xml_is_xml_safe (int ,int ) ;

__attribute__((used)) static svn_error_t *
get_encoding_and_cdata(const char **encoding_p,
                       const svn_string_t **encoded_value_p,
                       serf_bucket_alloc_t *alloc,
                       const svn_string_t *value,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  if (value == ((void*)0))
    {
      *encoding_p = ((void*)0);
      *encoded_value_p = ((void*)0);
      return SVN_NO_ERROR;
    }



  if (svn_xml_is_xml_safe(value->data, value->len))
    {
      svn_stringbuf_t *xml_esc = ((void*)0);
      svn_xml_escape_cdata_string(&xml_esc, value, scratch_pool);
      *encoding_p = ((void*)0);
      *encoded_value_p = svn_string_create_from_buf(xml_esc, result_pool);
    }
  else
    {
      *encoding_p = "base64";
      *encoded_value_p = svn_base64_encode_string2(value, TRUE, result_pool);
    }

  return SVN_NO_ERROR;
}
