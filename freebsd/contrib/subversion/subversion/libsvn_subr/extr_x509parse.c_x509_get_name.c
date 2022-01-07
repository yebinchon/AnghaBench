
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ x509_name ;
typedef int svn_error_t ;
typedef int ptrdiff_t ;
typedef int apr_pool_t ;


 int ASN1_CONSTRUCTED ;
 int ASN1_SET ;
 int SVN_ERR (int ) ;
 int SVN_ERR_X509_CERT_INVALID_NAME ;
 int * SVN_NO_ERROR ;
 void* apr_palloc (int *,int) ;
 int * asn1_get_tag (unsigned char const**,unsigned char const*,int*,int) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_trace (int *) ;
 int x509_get_attribute (unsigned char const**,unsigned char const*,TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
x509_get_name(const unsigned char **p, const unsigned char *name_end,
              x509_name *name, apr_pool_t *result_pool)
{
  svn_error_t *err;
  ptrdiff_t len;
  const unsigned char *set_end;
  x509_name *cur = ((void*)0);

  err = asn1_get_tag(p, name_end, &len, ASN1_CONSTRUCTED | ASN1_SET);
  if (err || len < 1)
    return svn_error_create(SVN_ERR_X509_CERT_INVALID_NAME, err, ((void*)0));

  set_end = *p + len;




  while (*p < set_end)
    {
      if (!cur)
        {
          cur = name;
        }
      else
        {
          cur->next = apr_palloc(result_pool, sizeof(x509_name));
          cur = cur->next;
        }
      SVN_ERR(x509_get_attribute(p, set_end, cur, result_pool));
    }




  if (*p == name_end)
    return SVN_NO_ERROR;

  cur->next = apr_palloc(result_pool, sizeof(x509_name));

  return svn_error_trace(x509_get_name(p, name_end, cur->next, result_pool));
}
