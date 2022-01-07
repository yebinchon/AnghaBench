
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int apr_time_t ;
struct TYPE_4__ {int tm_gmtoff; int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
typedef TYPE_1__ apr_time_exp_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int HUMAN_TIMESTAMP_FORMAT ;
 int HUMAN_TIMESTAMP_FORMAT_SUFFIX ;
 int SVN_TIME__MAX_LENGTH ;
 int abs (int) ;
 int apr_cpystrn (char*,char const*,int) ;
 char* apr_palloc (int *,int) ;
 int apr_snprintf (char*,int,int ,scalar_t__,scalar_t__,int ,int ,int ,int ,int,int) ;
 scalar_t__ apr_strftime (char*,int*,int,int ,TYPE_1__*) ;
 scalar_t__ apr_time_exp_lt (TYPE_1__*,int ) ;
 int svn_error_clear (int *) ;
 int * svn_utf_cstring_to_utf8 (char const**,char*,int *) ;

const char *
svn_time_to_human_cstring(apr_time_t when, apr_pool_t *pool)
{
  apr_time_exp_t exploded_time;
  apr_size_t len, retlen;
  apr_status_t ret;
  char *datestr, *curptr, human_datestr[SVN_TIME__MAX_LENGTH];


  ret = apr_time_exp_lt(&exploded_time, when);
  if (ret)
    return ((void*)0);


  datestr = apr_palloc(pool, SVN_TIME__MAX_LENGTH);


  len = apr_snprintf(datestr,
                     SVN_TIME__MAX_LENGTH,
                     HUMAN_TIMESTAMP_FORMAT,
                     exploded_time.tm_year + 1900,
                     exploded_time.tm_mon + 1,
                     exploded_time.tm_mday,
                     exploded_time.tm_hour,
                     exploded_time.tm_min,
                     exploded_time.tm_sec,
                     exploded_time.tm_gmtoff / (60 * 60),
                     (abs(exploded_time.tm_gmtoff) / 60) % 60);


  if (len >= SVN_TIME__MAX_LENGTH)
    return datestr;


  curptr = datestr + len;


  ret = apr_strftime(human_datestr,
                     &retlen,
                     SVN_TIME__MAX_LENGTH - len,
                     HUMAN_TIMESTAMP_FORMAT_SUFFIX,
                     &exploded_time);


  if (ret || retlen == 0)
    *curptr = '\0';
  else
    {
      const char *utf8_string;
      svn_error_t *err;

      err = svn_utf_cstring_to_utf8(&utf8_string, human_datestr, pool);
      if (err)
        {
          *curptr = '\0';
          svn_error_clear(err);
        }
      else
        apr_cpystrn(curptr, utf8_string, SVN_TIME__MAX_LENGTH - len);
    }

  return datestr;
}
