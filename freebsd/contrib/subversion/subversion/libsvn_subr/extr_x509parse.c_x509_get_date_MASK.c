#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
struct TYPE_12__ {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; scalar_t__ tm_usec; int tm_wday; int tm_yday; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ apr_time_exp_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
#define  ASN1_GENERALIZED_TIME 129 
#define  ASN1_UTC_TIME 128 
 scalar_t__ SVN_ERR_ASN1_UNEXPECTED_TAG ; 
 int /*<<< orphan*/  SVN_ERR_X509_CERT_INVALID_DATE ; 
 TYPE_1__* SVN_NO_ERROR ; 
 char* FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_1__* FUNC2 (unsigned char const**,unsigned char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (char*,char*,int*,int*,int*,int*,int*,int*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(apr_time_t *when,
              const unsigned char **p,
              const unsigned char *end,
              apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  apr_status_t ret;
  int tag;
  ptrdiff_t len;
  char *date;
  apr_time_exp_t xt = { 0 };
  char tz;

  err = FUNC2(p, end, &len, ASN1_UTC_TIME);
  if (err && err->apr_err == SVN_ERR_ASN1_UNEXPECTED_TAG)
    {
      FUNC4(err);
      err = FUNC2(p, end, &len, ASN1_GENERALIZED_TIME);
      tag = ASN1_GENERALIZED_TIME;
    }
  else
    {
      tag = ASN1_UTC_TIME;
    }
  if (err)
    return FUNC5(SVN_ERR_X509_CERT_INVALID_DATE, err, NULL);

  date = FUNC0(scratch_pool, (const char *) *p, len);
  switch (tag)
    {
    case ASN1_UTC_TIME:
      if (FUNC3(date, "%2d%2d%2d%2d%2d%2d%c",
                 &xt.tm_year, &xt.tm_mon, &xt.tm_mday,
                 &xt.tm_hour, &xt.tm_min, &xt.tm_sec, &tz) < 6)
        return FUNC5(SVN_ERR_X509_CERT_INVALID_DATE, NULL, NULL);

      /* UTCTime only provides a 2 digit year.  X.509 specifies that years
       * greater than or equal to 50 must be interpreted as 19YY and years
       * less than 50 be interpreted as 20YY.  This format is not used for
       * years greater than 2049. apr_time_exp_t wants years as the number
       * of years since 1900, so don't convert to 4 digits here. */
      xt.tm_year += 100 * (xt.tm_year < 50);
      break;

    case ASN1_GENERALIZED_TIME:
      if (FUNC3(date, "%4d%2d%2d%2d%2d%2d%c",
                 &xt.tm_year, &xt.tm_mon, &xt.tm_mday,
                 &xt.tm_hour, &xt.tm_min, &xt.tm_sec, &tz) < 6)
        return FUNC5(SVN_ERR_X509_CERT_INVALID_DATE, NULL, NULL);

      /* GeneralizedTime has the full 4 digit year.  But apr_time_exp_t
       * wants years as the number of years since 1900. */
      xt.tm_year -= 1900;
      break;

    default:
      /* shouldn't ever get here because we should error out above in the
       * asn1_get_tag() bits but doesn't hurt to be extra paranoid. */
      return FUNC5(SVN_ERR_X509_CERT_INVALID_DATE, NULL, NULL);
      break;
    }

  /* check that the timezone is GMT
   * ASN.1 allows for the timezone to be specified but X.509 says it must
   * always be GMT.  A little bit of extra paranoia here seems like a good
   * idea. */
  if (tz != 'Z')
    return FUNC5(SVN_ERR_X509_CERT_INVALID_DATE, NULL, NULL);

  /* apr_time_exp_t expects months to be zero indexed, 0=Jan, 11=Dec. */
  xt.tm_mon -= 1;

  /* range checks (as per definition of apr_time_exp_t in apr_time.h) */
  if (xt.tm_usec < 0 ||
      xt.tm_sec < 0 || xt.tm_sec > 61 ||
      xt.tm_min < 0 || xt.tm_min > 59 ||
      xt.tm_hour < 0 || xt.tm_hour > 23 ||
      xt.tm_mday < 1 || xt.tm_mday > 31 ||
      xt.tm_mon < 0 || xt.tm_mon > 11 ||
      xt.tm_year < 0 ||
      xt.tm_wday < 0 || xt.tm_wday > 6 ||
      xt.tm_yday < 0 || xt.tm_yday > 365)
    return FUNC5(SVN_ERR_X509_CERT_INVALID_DATE, NULL, NULL);

  ret = FUNC1(when, &xt);
  if (ret)
    return FUNC6(ret, NULL);

  *p += len;

  return SVN_NO_ERROR;
}