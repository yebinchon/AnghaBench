#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int version; int /*<<< orphan*/  valid_to; int /*<<< orphan*/  valid_from; int /*<<< orphan*/  issuer; int /*<<< orphan*/  subject; int /*<<< orphan*/  sig; int /*<<< orphan*/  sig_oid2; int /*<<< orphan*/  sig_oid1; int /*<<< orphan*/  dnsnames; int /*<<< orphan*/  subject_id; int /*<<< orphan*/  issuer_id; int /*<<< orphan*/  serial; } ;
typedef  TYPE_1__ x509_cert ;
typedef  int /*<<< orphan*/  x509_buf ;
struct TYPE_7__ {int /*<<< orphan*/  digest; int /*<<< orphan*/  valid_to; int /*<<< orphan*/  valid_from; int /*<<< orphan*/  issuer; int /*<<< orphan*/  subject; } ;
typedef  TYPE_2__ svn_x509_certinfo_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int ptrdiff_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int ASN1_CONSTRUCTED ; 
 int ASN1_SEQUENCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_ASN1_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  SVN_ERR_X509_CERT_INVALID_FORMAT ; 
 int /*<<< orphan*/  SVN_ERR_X509_CERT_SIG_MISMATCH ; 
 int /*<<< orphan*/  SVN_ERR_X509_CERT_UNKNOWN_VERSION ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned char const**,unsigned char const*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_sha1 ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char const**,unsigned char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char const**,unsigned char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned char const**,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char const**,unsigned char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char const**,unsigned char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char const**,unsigned char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char const**,unsigned char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char const**,unsigned char const*,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC17(svn_x509_certinfo_t **certinfo,
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

  crt = FUNC2(scratch_pool, sizeof(*crt));
  p = (const unsigned char *)buf;
  len = buflen;
  end = p + len;

  /*
   * Certificate  ::=      SEQUENCE  {
   *              tbsCertificate           TBSCertificate,
   *              signatureAlgorithm       AlgorithmIdentifier,
   *              signatureValue           BIT STRING      }
   */
  err = FUNC3(&p, end, &len, ASN1_CONSTRUCTED | ASN1_SEQUENCE);
  if (err)
    return FUNC6(SVN_ERR_X509_CERT_INVALID_FORMAT, err, NULL);

  if (len != (end - p))
    {
      err = FUNC6(SVN_ERR_ASN1_LENGTH_MISMATCH, NULL, NULL);
      return FUNC6(SVN_ERR_X509_CERT_INVALID_FORMAT, err, NULL);
    }

  /*
   * TBSCertificate  ::=  SEQUENCE  {
   */
  err = FUNC3(&p, end, &len, ASN1_CONSTRUCTED | ASN1_SEQUENCE);
  if (err)
    return FUNC6(SVN_ERR_X509_CERT_INVALID_FORMAT, err, NULL);

  end = p + len;

  /*
   * Version      ::=      INTEGER  {      v1(0), v2(1), v3(2)  }
   *
   * CertificateSerialNumber      ::=      INTEGER
   *
   * signature                    AlgorithmIdentifier
   */
  FUNC0(FUNC14(&p, end, &crt->version));
  FUNC0(FUNC11(&p, end, &crt->serial));
  FUNC0(FUNC7(&p, end, &crt->sig_oid1));

  crt->version++;

  if (crt->version > 3)
    return FUNC6(SVN_ERR_X509_CERT_UNKNOWN_VERSION, NULL, NULL);

  /*
   * issuer                               Name
   */
  err = FUNC3(&p, end, &len, ASN1_CONSTRUCTED | ASN1_SEQUENCE);
  if (err)
    return FUNC6(SVN_ERR_X509_CERT_INVALID_FORMAT, err, NULL);

  FUNC0(FUNC10(&p, p + len, &crt->issuer, scratch_pool));

  /*
   * Validity ::= SEQUENCE {
   *              notBefore          Time,
   *              notAfter           Time }
   *
   */
  FUNC0(FUNC8(&crt->valid_from, &crt->valid_to, &p, end,
                         scratch_pool));

  /*
   * subject                              Name
   */
  err = FUNC3(&p, end, &len, ASN1_CONSTRUCTED | ASN1_SEQUENCE);
  if (err)
    return FUNC6(SVN_ERR_X509_CERT_INVALID_FORMAT, err, NULL);

  FUNC0(FUNC10(&p, p + len, &crt->subject, scratch_pool));

  /*
   * SubjectPublicKeyInfo  ::=  SEQUENCE
   *              algorithm                        AlgorithmIdentifier,
   *              subjectPublicKey         BIT STRING      }
   */
  err = FUNC3(&p, end, &len, ASN1_CONSTRUCTED | ASN1_SEQUENCE);
  if (err)
    return FUNC6(SVN_ERR_X509_CERT_INVALID_FORMAT, err, NULL);

  /* Skip pubkey. */
  p += len;

  /*
   *      issuerUniqueID  [1]      IMPLICIT UniqueIdentifier OPTIONAL,
   *                                               -- If present, version shall be v2 or v3
   *      subjectUniqueID [2]      IMPLICIT UniqueIdentifier OPTIONAL,
   *                                               -- If present, version shall be v2 or v3
   *      extensions              [3]      EXPLICIT Extensions OPTIONAL
   *                                               -- If present, version shall be v3
   */
  crt->dnsnames = FUNC1(scratch_pool, 3, sizeof(x509_buf *));

  /* Try to parse issuerUniqueID, subjectUniqueID and extensions for *every*
   * version (X.509 v1, v2 and v3), not just v2 or v3.  If they aren't present,
   * we are fine, but we don't want to throw an error if they are.  v1 and v2
   * certificates with the corresponding extra fields are ill-formed per RFC
   * 5280 s. 4.1, but we suspect they could exist in the real world.  Other
   * X.509 parsers (e.g., within OpenSSL or Microsoft CryptoAPI) aren't picky
   * about these certificates, and we also allow them. */
  FUNC0(FUNC13(&p, end, &crt->issuer_id, 1));
  FUNC0(FUNC13(&p, end, &crt->subject_id, 2));
  FUNC0(FUNC9(crt->dnsnames, &p, end));

  if (p != end)
    {
      err = FUNC6(SVN_ERR_ASN1_LENGTH_MISMATCH, NULL, NULL);
      return FUNC6(SVN_ERR_X509_CERT_INVALID_FORMAT, err, NULL);
    }

  end = (const unsigned char*) buf + buflen;

  /*
   *      signatureAlgorithm       AlgorithmIdentifier,
   *      signatureValue           BIT STRING
   */
  FUNC0(FUNC7(&p, end, &crt->sig_oid2));

  if (!FUNC4(&crt->sig_oid1, &crt->sig_oid2))
    return FUNC6(SVN_ERR_X509_CERT_SIG_MISMATCH, NULL, NULL);

  FUNC0(FUNC12(&p, end, &crt->sig));

  if (p != end)
    {
      err = FUNC6(SVN_ERR_ASN1_LENGTH_MISMATCH, NULL, NULL);
      return FUNC6(SVN_ERR_X509_CERT_INVALID_FORMAT, err, NULL);
    }

  ci = FUNC2(result_pool, sizeof(*ci));

  /* Get the subject name */
  FUNC0(FUNC15(&ci->subject, &crt->subject,
                                scratch_pool, result_pool));

  /* Get the issuer name */
  FUNC0(FUNC15(&ci->issuer, &crt->issuer,
                                scratch_pool, result_pool));

  /* Copy the validity range */
  ci->valid_from = crt->valid_from;
  ci->valid_to = crt->valid_to;

  /* Calculate the SHA1 digest of the certificate, otherwise known as
    the fingerprint */
  FUNC0(FUNC5(&ci->digest, svn_checksum_sha1, buf, buflen,
                       result_pool));

  /* Construct the array of host names */
  FUNC16(ci, crt, result_pool, scratch_pool);

  *certinfo = ci;
  return SVN_NO_ERROR;
}