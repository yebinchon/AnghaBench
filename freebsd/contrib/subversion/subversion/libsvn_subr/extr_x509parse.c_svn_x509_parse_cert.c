
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int version; int valid_to; int valid_from; int issuer; int subject; int sig; int sig_oid2; int sig_oid1; int dnsnames; int subject_id; int issuer_id; int serial; } ;
typedef TYPE_1__ x509_cert ;
typedef int x509_buf ;
struct TYPE_7__ {int digest; int valid_to; int valid_from; int issuer; int subject; } ;
typedef TYPE_2__ svn_x509_certinfo_t ;
typedef int svn_error_t ;
typedef int ptrdiff_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int ASN1_CONSTRUCTED ;
 int ASN1_SEQUENCE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASN1_LENGTH_MISMATCH ;
 int SVN_ERR_X509_CERT_INVALID_FORMAT ;
 int SVN_ERR_X509_CERT_SIG_MISMATCH ;
 int SVN_ERR_X509_CERT_UNKNOWN_VERSION ;
 int * SVN_NO_ERROR ;
 int apr_array_make (int *,int,int) ;
 void* apr_pcalloc (int *,int) ;
 int * asn1_get_tag (unsigned char const**,unsigned char const*,int*,int) ;
 int oids_equal (int *,int *) ;
 int svn_checksum (int *,int ,char const*,int,int *) ;
 int svn_checksum_sha1 ;
 int * svn_error_create (int ,int *,int *) ;
 int x509_get_alg (unsigned char const**,unsigned char const*,int *) ;
 int x509_get_dates (int *,int *,unsigned char const**,unsigned char const*,int *) ;
 int x509_get_ext (int ,unsigned char const**,unsigned char const*) ;
 int x509_get_name (unsigned char const**,unsigned char const*,int *,int *) ;
 int x509_get_serial (unsigned char const**,unsigned char const*,int *) ;
 int x509_get_sig (unsigned char const**,unsigned char const*,int *) ;
 int x509_get_uid (unsigned char const**,unsigned char const*,int *,int) ;
 int x509_get_version (unsigned char const**,unsigned char const*,int*) ;
 int x509_name_to_certinfo (int *,int *,int *,int *) ;
 int x509parse_get_hostnames (TYPE_2__*,TYPE_1__*,int *,int *) ;

svn_error_t *
svn_x509_parse_cert(svn_x509_certinfo_t **certinfo,
                    const char *buf,
                    apr_size_t buflen,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  ptrdiff_t len;
  const unsigned char *p;
  const unsigned char *end;
  x509_cert *crt;
  svn_x509_certinfo_t *ci;

  crt = apr_pcalloc(scratch_pool, sizeof(*crt));
  p = (const unsigned char *)buf;
  len = buflen;
  end = p + len;







  err = asn1_get_tag(&p, end, &len, ASN1_CONSTRUCTED | ASN1_SEQUENCE);
  if (err)
    return svn_error_create(SVN_ERR_X509_CERT_INVALID_FORMAT, err, ((void*)0));

  if (len != (end - p))
    {
      err = svn_error_create(SVN_ERR_ASN1_LENGTH_MISMATCH, ((void*)0), ((void*)0));
      return svn_error_create(SVN_ERR_X509_CERT_INVALID_FORMAT, err, ((void*)0));
    }




  err = asn1_get_tag(&p, end, &len, ASN1_CONSTRUCTED | ASN1_SEQUENCE);
  if (err)
    return svn_error_create(SVN_ERR_X509_CERT_INVALID_FORMAT, err, ((void*)0));

  end = p + len;
  SVN_ERR(x509_get_version(&p, end, &crt->version));
  SVN_ERR(x509_get_serial(&p, end, &crt->serial));
  SVN_ERR(x509_get_alg(&p, end, &crt->sig_oid1));

  crt->version++;

  if (crt->version > 3)
    return svn_error_create(SVN_ERR_X509_CERT_UNKNOWN_VERSION, ((void*)0), ((void*)0));




  err = asn1_get_tag(&p, end, &len, ASN1_CONSTRUCTED | ASN1_SEQUENCE);
  if (err)
    return svn_error_create(SVN_ERR_X509_CERT_INVALID_FORMAT, err, ((void*)0));

  SVN_ERR(x509_get_name(&p, p + len, &crt->issuer, scratch_pool));







  SVN_ERR(x509_get_dates(&crt->valid_from, &crt->valid_to, &p, end,
                         scratch_pool));




  err = asn1_get_tag(&p, end, &len, ASN1_CONSTRUCTED | ASN1_SEQUENCE);
  if (err)
    return svn_error_create(SVN_ERR_X509_CERT_INVALID_FORMAT, err, ((void*)0));

  SVN_ERR(x509_get_name(&p, p + len, &crt->subject, scratch_pool));






  err = asn1_get_tag(&p, end, &len, ASN1_CONSTRUCTED | ASN1_SEQUENCE);
  if (err)
    return svn_error_create(SVN_ERR_X509_CERT_INVALID_FORMAT, err, ((void*)0));


  p += len;
  crt->dnsnames = apr_array_make(scratch_pool, 3, sizeof(x509_buf *));
  SVN_ERR(x509_get_uid(&p, end, &crt->issuer_id, 1));
  SVN_ERR(x509_get_uid(&p, end, &crt->subject_id, 2));
  SVN_ERR(x509_get_ext(crt->dnsnames, &p, end));

  if (p != end)
    {
      err = svn_error_create(SVN_ERR_ASN1_LENGTH_MISMATCH, ((void*)0), ((void*)0));
      return svn_error_create(SVN_ERR_X509_CERT_INVALID_FORMAT, err, ((void*)0));
    }

  end = (const unsigned char*) buf + buflen;





  SVN_ERR(x509_get_alg(&p, end, &crt->sig_oid2));

  if (!oids_equal(&crt->sig_oid1, &crt->sig_oid2))
    return svn_error_create(SVN_ERR_X509_CERT_SIG_MISMATCH, ((void*)0), ((void*)0));

  SVN_ERR(x509_get_sig(&p, end, &crt->sig));

  if (p != end)
    {
      err = svn_error_create(SVN_ERR_ASN1_LENGTH_MISMATCH, ((void*)0), ((void*)0));
      return svn_error_create(SVN_ERR_X509_CERT_INVALID_FORMAT, err, ((void*)0));
    }

  ci = apr_pcalloc(result_pool, sizeof(*ci));


  SVN_ERR(x509_name_to_certinfo(&ci->subject, &crt->subject,
                                scratch_pool, result_pool));


  SVN_ERR(x509_name_to_certinfo(&ci->issuer, &crt->issuer,
                                scratch_pool, result_pool));


  ci->valid_from = crt->valid_from;
  ci->valid_to = crt->valid_to;



  SVN_ERR(svn_checksum(&ci->digest, svn_checksum_sha1, buf, buflen,
                       result_pool));


  x509parse_get_hostnames(ci, crt, result_pool, scratch_pool);

  *certinfo = ci;
  return SVN_NO_ERROR;
}
