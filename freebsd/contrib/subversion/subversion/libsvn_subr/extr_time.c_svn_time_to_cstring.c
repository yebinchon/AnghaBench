
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int apr_time_t ;
struct TYPE_3__ {int tm_usec; int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
typedef TYPE_1__ apr_time_exp_t ;
typedef int apr_pool_t ;


 int TIMESTAMP_FORMAT ;
 char const* apr_psprintf (int *,int ,scalar_t__,scalar_t__,int ,int ,int ,int ,int ) ;
 int apr_time_exp_gmt (TYPE_1__*,int ) ;

const char *
svn_time_to_cstring(apr_time_t when, apr_pool_t *pool)
{
  apr_time_exp_t exploded_time;
  apr_time_exp_gmt(&exploded_time, when);




  return apr_psprintf(pool,
                      TIMESTAMP_FORMAT,
                      exploded_time.tm_year + 1900,
                      exploded_time.tm_mon + 1,
                      exploded_time.tm_mday,
                      exploded_time.tm_hour,
                      exploded_time.tm_min,
                      exploded_time.tm_sec,
                      exploded_time.tm_usec);
}
