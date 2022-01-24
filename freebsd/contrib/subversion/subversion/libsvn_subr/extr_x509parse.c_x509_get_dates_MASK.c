#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int ASN1_CONSTRUCTED ; 
 int ASN1_SEQUENCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_ASN1_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  SVN_ERR_X509_CERT_INVALID_DATE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (unsigned char const**,unsigned char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const**,unsigned char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(apr_time_t *from,
               apr_time_t *to,
               const unsigned char **p,
               const unsigned char *end,
               apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  ptrdiff_t len;

  err = FUNC1(p, end, &len, ASN1_CONSTRUCTED | ASN1_SEQUENCE);
  if (err)
    return FUNC2(SVN_ERR_X509_CERT_INVALID_DATE, err, NULL);

  end = *p + len;

  FUNC0(FUNC3(from, p, end, scratch_pool));

  FUNC0(FUNC3(to, p, end, scratch_pool));

  if (*p != end)
    {
      err = FUNC2(SVN_ERR_ASN1_LENGTH_MISMATCH, NULL, NULL);
      return FUNC2(SVN_ERR_X509_CERT_INVALID_DATE, err, NULL);
    }

  return SVN_NO_ERROR;
}