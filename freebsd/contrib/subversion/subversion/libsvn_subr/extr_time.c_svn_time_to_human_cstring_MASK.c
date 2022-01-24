#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
struct TYPE_4__ {int tm_gmtoff; int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
typedef  TYPE_1__ apr_time_exp_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  HUMAN_TIMESTAMP_FORMAT ; 
 int /*<<< orphan*/  HUMAN_TIMESTAMP_FORMAT_SUFFIX ; 
 int SVN_TIME__MAX_LENGTH ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC4 (char*,int*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const**,char*,int /*<<< orphan*/ *) ; 

const char *
FUNC8(apr_time_t when, apr_pool_t *pool)
{
  apr_time_exp_t exploded_time;
  apr_size_t len, retlen;
  apr_status_t ret;
  char *datestr, *curptr, human_datestr[SVN_TIME__MAX_LENGTH];

  /* Get the time into parts */
  ret = FUNC5(&exploded_time, when);
  if (ret)
    return NULL;

  /* Make room for datestring */
  datestr = FUNC2(pool, SVN_TIME__MAX_LENGTH);

  /* Put in machine parseable part */
  len = FUNC3(datestr,
                     SVN_TIME__MAX_LENGTH,
                     HUMAN_TIMESTAMP_FORMAT,
                     exploded_time.tm_year + 1900,
                     exploded_time.tm_mon + 1,
                     exploded_time.tm_mday,
                     exploded_time.tm_hour,
                     exploded_time.tm_min,
                     exploded_time.tm_sec,
                     exploded_time.tm_gmtoff / (60 * 60),
                     (FUNC0(exploded_time.tm_gmtoff) / 60) % 60);

  /* If we overfilled the buffer, just return what we got. */
  if (len >= SVN_TIME__MAX_LENGTH)
    return datestr;

  /* Calculate offset to the end of the machine parseable part. */
  curptr = datestr + len;

  /* Put in human explanatory part */
  ret = FUNC4(human_datestr,
                     &retlen,
                     SVN_TIME__MAX_LENGTH - len,
                     HUMAN_TIMESTAMP_FORMAT_SUFFIX,
                     &exploded_time);

  /* If there was an error, ensure that the string is zero-terminated. */
  if (ret || retlen == 0)
    *curptr = '\0';
  else
    {
      const char *utf8_string;
      svn_error_t *err;

      err = FUNC7(&utf8_string, human_datestr, pool);
      if (err)
        {
          *curptr = '\0';
          FUNC6(err);
        }
      else
        FUNC1(curptr, utf8_string, SVN_TIME__MAX_LENGTH - len);
    }

  return datestr;
}