
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char const* p; int len; int tag; } ;
typedef TYPE_1__ x509_buf ;
typedef int svn_error_t ;


 int ASN1_CONTEXT_SPECIFIC ;
 unsigned char const ASN1_INTEGER ;
 int ASN1_PRIMITIVE ;
 int SVN_ERR_ASN1_OUT_OF_DATA ;
 int SVN_ERR_ASN1_UNEXPECTED_TAG ;
 int SVN_ERR_X509_CERT_INVALID_SERIAL ;
 int * SVN_NO_ERROR ;
 int * asn1_get_len (unsigned char const**,unsigned char const*,int *) ;
 int * svn_error_create (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
x509_get_serial(const unsigned char **p,
                const unsigned char *end, x509_buf * serial)
{
  svn_error_t *err;

  if ((end - *p) < 1)
    {
      err = svn_error_create(SVN_ERR_ASN1_OUT_OF_DATA, ((void*)0), ((void*)0));
      return svn_error_create(SVN_ERR_X509_CERT_INVALID_SERIAL, err, ((void*)0));
    }

  if (**p != (ASN1_CONTEXT_SPECIFIC | ASN1_PRIMITIVE | 2) &&
      **p != ASN1_INTEGER)
    {
      err = svn_error_create(SVN_ERR_ASN1_UNEXPECTED_TAG, ((void*)0), ((void*)0));
      return svn_error_create(SVN_ERR_X509_CERT_INVALID_SERIAL, err, ((void*)0));
    }

  serial->tag = *(*p)++;

  err = asn1_get_len(p, end, &serial->len);
  if (err)
    return svn_error_create(SVN_ERR_X509_CERT_INVALID_SERIAL, err, ((void*)0));

  serial->p = *p;
  *p += serial->len;

  return SVN_NO_ERROR;
}
