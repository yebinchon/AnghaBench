
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_x509_certinfo_t ;
struct TYPE_5__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int stderr ;
 TYPE_1__* svn_base64_decode_string (TYPE_1__ const*,int *) ;
 int svn_error_clear (int *) ;
 int svn_handle_warning2 (int ,int *,char*) ;
 int * svn_x509_parse_cert (int **,int ,int ,int *,int *) ;

__attribute__((used)) static svn_x509_certinfo_t *
parse_certificate(const svn_string_t *ascii_cert,
                  svn_boolean_t print_warning,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_x509_certinfo_t *certinfo;
  const svn_string_t *der_cert;
  svn_error_t *err;


  der_cert = svn_base64_decode_string(ascii_cert, scratch_pool);

  err = svn_x509_parse_cert(&certinfo, der_cert->data, der_cert->len,
                            result_pool, scratch_pool);
  if (err)
    {

      if (print_warning)
        svn_handle_warning2(stderr, err, "svn: ");
      svn_error_clear(err);
      return ((void*)0);
    }

  return certinfo;
}
