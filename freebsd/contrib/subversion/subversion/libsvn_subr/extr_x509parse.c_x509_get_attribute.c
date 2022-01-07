
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tag; unsigned char const* p; int len; } ;
struct TYPE_4__ {int * next; TYPE_2__ val; TYPE_2__ oid; } ;
typedef TYPE_1__ x509_name ;
typedef TYPE_2__ x509_buf ;
typedef int svn_error_t ;
typedef int ptrdiff_t ;
typedef int apr_pool_t ;


 unsigned char const ASN1_BMP_STRING ;
 int ASN1_CONSTRUCTED ;
 unsigned char const ASN1_IA5_STRING ;
 int ASN1_OID ;
 unsigned char const ASN1_PRINTABLE_STRING ;
 int ASN1_SEQUENCE ;
 unsigned char const ASN1_T61_STRING ;
 unsigned char const ASN1_UNIVERSAL_STRING ;
 unsigned char const ASN1_UTF8_STRING ;
 int SVN_ERR_ASN1_LENGTH_MISMATCH ;
 int SVN_ERR_ASN1_OUT_OF_DATA ;
 int SVN_ERR_ASN1_UNEXPECTED_TAG ;
 int SVN_ERR_X509_CERT_INVALID_NAME ;
 int * SVN_NO_ERROR ;
 int * asn1_get_len (unsigned char const**,unsigned char const*,int *) ;
 int * asn1_get_tag (unsigned char const**,unsigned char const*,int *,int) ;
 int * svn_error_create (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
x509_get_attribute(const unsigned char **p, const unsigned char *end,
                   x509_name *cur, apr_pool_t *result_pool)
{
  svn_error_t *err;
  ptrdiff_t len;
  x509_buf *oid;
  x509_buf *val;

  err = asn1_get_tag(p, end, &len, ASN1_CONSTRUCTED | ASN1_SEQUENCE);
  if (err)
    return svn_error_create(SVN_ERR_X509_CERT_INVALID_NAME, err, ((void*)0));

  end = *p + len;

  oid = &cur->oid;

  err = asn1_get_tag(p, end, &oid->len, ASN1_OID);
  if (err)
    return svn_error_create(SVN_ERR_X509_CERT_INVALID_NAME, err, ((void*)0));

  oid->tag = ASN1_OID;
  oid->p = *p;
  *p += oid->len;

  if ((end - *p) < 1)
    {
      err = svn_error_create(SVN_ERR_ASN1_OUT_OF_DATA, ((void*)0), ((void*)0));
      return svn_error_create(SVN_ERR_X509_CERT_INVALID_NAME, err, ((void*)0));
    }

  if (**p != ASN1_BMP_STRING && **p != ASN1_UTF8_STRING &&
      **p != ASN1_T61_STRING && **p != ASN1_PRINTABLE_STRING &&
      **p != ASN1_IA5_STRING && **p != ASN1_UNIVERSAL_STRING)
    {
      err = svn_error_create(SVN_ERR_ASN1_UNEXPECTED_TAG, ((void*)0), ((void*)0));
      return svn_error_create(SVN_ERR_X509_CERT_INVALID_NAME, err, ((void*)0));
    }

  val = &cur->val;
  val->tag = *(*p)++;

  err = asn1_get_len(p, end, &val->len);
  if (err)
    return svn_error_create(SVN_ERR_X509_CERT_INVALID_NAME, err, ((void*)0));

  val->p = *p;
  *p += val->len;

  cur->next = ((void*)0);

  if (*p != end)
    {
      err = svn_error_create(SVN_ERR_ASN1_LENGTH_MISMATCH, ((void*)0), ((void*)0));
      return svn_error_create(SVN_ERR_X509_CERT_INVALID_NAME, err, ((void*)0));
    }

  return SVN_NO_ERROR;
}
