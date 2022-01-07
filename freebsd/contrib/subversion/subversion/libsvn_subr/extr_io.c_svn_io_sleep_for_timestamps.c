
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef scalar_t__ apr_time_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int mtime; } ;
typedef TYPE_1__ apr_finfo_t ;


 int APR_FINFO_LINK ;
 int APR_FINFO_MTIME ;
 int APR_USEC_PER_SEC ;
 int SVN_HI_RES_SLEEP_MS ;
 int SVN_SLEEP_ENV_VAR ;
 int apr_sleep (scalar_t__) ;
 scalar_t__ apr_strnatcasecmp (char*,char*) ;
 scalar_t__ apr_time_from_msec (int ) ;
 scalar_t__ apr_time_make (scalar_t__,int) ;
 scalar_t__ apr_time_now () ;
 scalar_t__ apr_time_sec (scalar_t__) ;
 char* getenv (int ) ;
 int svn_error_clear (int *) ;
 int * svn_io_stat (TYPE_1__*,char const*,int,int *) ;

void
svn_io_sleep_for_timestamps(const char *path, apr_pool_t *pool)
{
  apr_time_t now, then;
  svn_error_t *err;
  char *sleep_env_var;

  sleep_env_var = getenv(SVN_SLEEP_ENV_VAR);

  if (sleep_env_var && apr_strnatcasecmp(sleep_env_var, "yes") == 0)
    return;

  now = apr_time_now();


  then = apr_time_make(apr_time_sec(now) + 1, APR_USEC_PER_SEC / 50);



  if (path)
    {
      apr_finfo_t finfo;

      err = svn_io_stat(&finfo, path, APR_FINFO_MTIME | APR_FINFO_LINK, pool);

      if (err)
        {
          svn_error_clear(err);
        }
      else if (finfo.mtime % APR_USEC_PER_SEC)
        {
          then = now + apr_time_from_msec(10);
        }


      now = apr_time_now();
    }

  if (now >= then)
    return;


  if (then - now < 1000)
    apr_sleep(1000);
  else
    apr_sleep(then - now);
}
