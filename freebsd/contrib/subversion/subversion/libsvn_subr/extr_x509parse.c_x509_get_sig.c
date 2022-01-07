
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; unsigned char const* p; int tag; } ;
typedef TYPE_1__ x509_buf ;
typedef int svn_error_t ;
typedef int ptrdiff_t ;


 int ASN1_BIT_STRING ;
 int SVN_ERR_X509_CERT_INVALID_SIGNATURE ;
 int * SVN_NO_ERROR ;
 int * asn1_get_tag (unsigned char const**,unsigned char const*,int*,int ) ;
 int * svn_error_create (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
x509_get_sig(const unsigned char **p, const unsigned char *end, x509_buf * sig)
{
  svn_error_t *err;
  ptrdiff_t len;

  err = asn1_get_tag(p, end, &len, ASN1_BIT_STRING);
  if (err)
    return svn_error_create(SVN_ERR_X509_CERT_INVALID_SIGNATURE, err, ((void*)0));

  sig->tag = ASN1_BIT_STRING;

  if (--len < 1 || *(*p)++ != 0)
    return svn_error_create(SVN_ERR_X509_CERT_INVALID_SIGNATURE, ((void*)0), ((void*)0));

  sig->len = len;
  sig->p = *p;

  *p += len;

  return SVN_NO_ERROR;
}
