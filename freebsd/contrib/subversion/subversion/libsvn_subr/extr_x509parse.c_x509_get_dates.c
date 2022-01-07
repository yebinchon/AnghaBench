
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int ptrdiff_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;


 int ASN1_CONSTRUCTED ;
 int ASN1_SEQUENCE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASN1_LENGTH_MISMATCH ;
 int SVN_ERR_X509_CERT_INVALID_DATE ;
 int * SVN_NO_ERROR ;
 int * asn1_get_tag (unsigned char const**,unsigned char const*,int *,int) ;
 int * svn_error_create (int ,int *,int *) ;
 int x509_get_date (int *,unsigned char const**,unsigned char const*,int *) ;

__attribute__((used)) static svn_error_t *
x509_get_dates(apr_time_t *from,
               apr_time_t *to,
               const unsigned char **p,
               const unsigned char *end,
               apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  ptrdiff_t len;

  err = asn1_get_tag(p, end, &len, ASN1_CONSTRUCTED | ASN1_SEQUENCE);
  if (err)
    return svn_error_create(SVN_ERR_X509_CERT_INVALID_DATE, err, ((void*)0));

  end = *p + len;

  SVN_ERR(x509_get_date(from, p, end, scratch_pool));

  SVN_ERR(x509_get_date(to, p, end, scratch_pool));

  if (*p != end)
    {
      err = svn_error_create(SVN_ERR_ASN1_LENGTH_MISMATCH, ((void*)0), ((void*)0));
      return svn_error_create(SVN_ERR_X509_CERT_INVALID_DATE, err, ((void*)0));
    }

  return SVN_NO_ERROR;
}
