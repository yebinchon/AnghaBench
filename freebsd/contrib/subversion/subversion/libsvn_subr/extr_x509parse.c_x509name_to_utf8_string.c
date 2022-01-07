
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int tag; int len; scalar_t__ p; } ;
struct TYPE_13__ {TYPE_1__ val; } ;
typedef TYPE_2__ x509_name ;
struct TYPE_14__ {int len; scalar_t__ data; } ;
typedef TYPE_3__ svn_string_t ;
typedef int svn_error_t ;
typedef int apr_uint16_t ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;






 int TRUE ;
 char const* fuzzy_escape (TYPE_3__ const*,int *) ;
 int * latin1_to_utf8 (TYPE_3__ const**,TYPE_3__ const*,int *) ;
 char const* nul_escape (TYPE_3__ const*,int *) ;
 int svn_error_clear (int *) ;
 TYPE_3__* svn_string_ncreate (char const*,int ,int *) ;
 int svn_utf__is_valid (scalar_t__,int) ;
 int * svn_utf__utf16_to_utf8 (TYPE_3__ const**,void const*,int,int ,int *,int *) ;
 int * svn_utf__utf32_to_utf8 (TYPE_3__ const**,void const*,int,int ,int *,int *) ;

__attribute__((used)) static const char *
x509name_to_utf8_string(const x509_name *name, apr_pool_t *result_pool)
{
  const svn_string_t *src_string;
  const svn_string_t *utf8_string;
  svn_error_t *err;

  src_string = svn_string_ncreate((const char *)name->val.p,
                                  name->val.len,
                                  result_pool);
  switch (name->val.tag)
    {
    case 128:
      if (svn_utf__is_valid(src_string->data, src_string->len))
        return nul_escape(src_string, result_pool);
      else


        return fuzzy_escape(src_string, result_pool);
      break;







    case 131:
      if (0 != src_string->len % sizeof(apr_uint16_t))
          return fuzzy_escape(src_string, result_pool);
      err = svn_utf__utf16_to_utf8(&utf8_string,
                                   (const void*)(src_string->data),
                                   src_string->len / sizeof(apr_uint16_t),
                                   TRUE, result_pool, result_pool);
      break;

    case 129:
      if (0 != src_string->len % sizeof(apr_int32_t))
          return fuzzy_escape(src_string, result_pool);
      err = svn_utf__utf32_to_utf8(&utf8_string,
                                   (const void*)(src_string->data),
                                   src_string->len / sizeof(apr_int32_t),
                                   TRUE, result_pool, result_pool);
      break;







    case 130:
      err = latin1_to_utf8(&utf8_string, src_string, result_pool);
      break;
    default:
      return fuzzy_escape(src_string, result_pool);
    }

  if (err)
    {
      svn_error_clear(err);
      return fuzzy_escape(src_string, result_pool);
    }

  return nul_escape(utf8_string, result_pool);
}
