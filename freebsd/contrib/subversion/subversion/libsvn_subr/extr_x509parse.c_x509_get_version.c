
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int ptrdiff_t ;


 int ASN1_CONSTRUCTED ;
 int ASN1_CONTEXT_SPECIFIC ;
 int SVN_ERR_ASN1_LENGTH_MISMATCH ;
 scalar_t__ SVN_ERR_ASN1_UNEXPECTED_TAG ;
 int SVN_ERR_X509_CERT_INVALID_VERSION ;
 TYPE_1__* SVN_NO_ERROR ;
 TYPE_1__* asn1_get_int (unsigned char const**,unsigned char const*,int*) ;
 TYPE_1__* asn1_get_tag (unsigned char const**,unsigned char const*,int *,int) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_create (int ,TYPE_1__*,int *) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
x509_get_version(const unsigned char **p, const unsigned char *end, int *ver)
{
  svn_error_t *err;
  ptrdiff_t len;






  err = asn1_get_tag(p, end, &len,
                     ASN1_CONTEXT_SPECIFIC | ASN1_CONSTRUCTED | 0);
  if (err)
    {
      if (err->apr_err == SVN_ERR_ASN1_UNEXPECTED_TAG)
        {
          svn_error_clear(err);
          *ver = 0;
          return SVN_NO_ERROR;
        }

      return svn_error_trace(err);
    }

  end = *p + len;

  err = asn1_get_int(p, end, ver);
  if (err)
    return svn_error_create(SVN_ERR_X509_CERT_INVALID_VERSION, err, ((void*)0));

  if (*p != end)
    {
      err = svn_error_create(SVN_ERR_ASN1_LENGTH_MISMATCH, ((void*)0), ((void*)0));
      return svn_error_create(SVN_ERR_X509_CERT_INVALID_VERSION, err, ((void*)0));
    }

  return SVN_NO_ERROR;
}
