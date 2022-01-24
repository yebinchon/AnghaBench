#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
struct TYPE_6__ {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; int /*<<< orphan*/  tm_gmtoff; } ;
typedef  TYPE_1__ apr_time_exp_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ APR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__*,char*,char const*) ; 
 int* valid_days_by_month ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(svn_boolean_t *matched, apr_time_t *result, const char *text,
               apr_time_t now, apr_pool_t *pool)
{
  apr_time_exp_t expt, expnow;
  apr_status_t apr_err;
  svn_boolean_t localtz;

  *matched = FALSE;

  apr_err = FUNC2(&expnow, now);
  if (apr_err != APR_SUCCESS)
    return FUNC3(apr_err, FUNC0("Can't manipulate current date"));

  if (FUNC4(&expt, &localtz, /* ISO-8601 extended, date only */
                     "YYYY-M[M]-D[D]",
                     text)
      || FUNC4(&expt, &localtz, /* ISO-8601 extended, UTC */
                        "YYYY-M[M]-D[D]Th[h]:mm[:ss[.u[u[u[u[u[u][Z]",
                        text)
      || FUNC4(&expt, &localtz, /* ISO-8601 extended, with offset */
                        "YYYY-M[M]-D[D]Th[h]:mm[:ss[.u[u[u[u[u[u]+OO[:oo]",
                        text)
      || FUNC4(&expt, &localtz, /* ISO-8601 basic, date only */
                        "YYYYMMDD",
                        text)
      || FUNC4(&expt, &localtz, /* ISO-8601 basic, UTC */
                        "YYYYMMDDThhmm[ss[.u[u[u[u[u[u][Z]",
                        text)
      || FUNC4(&expt, &localtz, /* ISO-8601 basic, with offset */
                        "YYYYMMDDThhmm[ss[.u[u[u[u[u[u]+OO[oo]",
                        text)
      || FUNC4(&expt, &localtz, /* "svn log" format */
                        "YYYY-M[M]-D[D] h[h]:mm[:ss[.u[u[u[u[u[u][ +OO[oo]",
                        text)
      || FUNC4(&expt, &localtz, /* GNU date's iso-8601 */
                        "YYYY-M[M]-D[D]Th[h]:mm[:ss[.u[u[u[u[u[u]+OO[oo]",
                        text))
    {
      expt.tm_year -= 1900;
      expt.tm_mon -= 1;
    }
  else if (FUNC4(&expt, &localtz, /* Just a time */
                          "h[h]:mm[:ss[.u[u[u[u[u[u]",
                          text))
    {
      expt.tm_year = expnow.tm_year;
      expt.tm_mon = expnow.tm_mon;
      expt.tm_mday = expnow.tm_mday;
    }
  else if (!FUNC5(&expt, &localtz, now, text, pool))
    return SVN_NO_ERROR;

  /* Range validation, allowing for leap seconds */
  if (expt.tm_mon < 0 || expt.tm_mon > 11
      || expt.tm_mday > valid_days_by_month[expt.tm_mon]
      || expt.tm_mday < 1
      || expt.tm_hour > 23
      || expt.tm_min > 59
      || expt.tm_sec > 60)
    return SVN_NO_ERROR;

  /* february/leap-year day checking.  tm_year is bias-1900, so centuries
     that equal 100 (mod 400) are multiples of 400. */
  if (expt.tm_mon == 1
      && expt.tm_mday == 29
      && (expt.tm_year % 4 != 0
          || (expt.tm_year % 100 == 0 && expt.tm_year % 400 != 100)))
    return SVN_NO_ERROR;

  if (localtz)
    {
      apr_time_t candidate;
      apr_time_exp_t expthen;

      /* We need to know the GMT offset of the requested time, not the
         current time.  In some cases, that quantity is ambiguous,
         since at the end of daylight saving's time, an hour's worth
         of local time happens twice.  For those cases, we should
         prefer DST if we are currently in DST, and standard time if
         not.  So, calculate the time value using the current time's
         GMT offset and use the GMT offset of the resulting time. */
      expt.tm_gmtoff = expnow.tm_gmtoff;
      apr_err = FUNC1(&candidate, &expt);
      if (apr_err != APR_SUCCESS)
        return FUNC3(apr_err,
                                  FUNC0("Can't calculate requested date"));
      apr_err = FUNC2(&expthen, candidate);
      if (apr_err != APR_SUCCESS)
        return FUNC3(apr_err, FUNC0("Can't expand time"));
      expt.tm_gmtoff = expthen.tm_gmtoff;
    }
  apr_err = FUNC1(result, &expt);
  if (apr_err != APR_SUCCESS)
    return FUNC3(apr_err, FUNC0("Can't calculate requested date"));

  *matched = TRUE;
  return SVN_NO_ERROR;
}