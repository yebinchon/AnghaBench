#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_3__ {int mtime; } ;
typedef  TYPE_1__ apr_finfo_t ;

/* Variables and functions */
 int APR_FINFO_LINK ; 
 int APR_FINFO_MTIME ; 
 int APR_USEC_PER_SEC ; 
 int /*<<< orphan*/  SVN_HI_RES_SLEEP_MS ; 
 int /*<<< orphan*/  SVN_SLEEP_ENV_VAR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,char const*,int,int /*<<< orphan*/ *) ; 

void
FUNC9(const char *path, apr_pool_t *pool)
{
  apr_time_t now, then;
  svn_error_t *err;
  char *sleep_env_var;

  sleep_env_var = FUNC6(SVN_SLEEP_ENV_VAR);

  if (sleep_env_var && FUNC1(sleep_env_var, "yes") == 0)
    return; /* Allow skipping for testing */

  now = FUNC4();

  /* Calculate 0.02 seconds after the next second wallclock tick. */
  then = FUNC3(FUNC5(now) + 1, APR_USEC_PER_SEC / 50);

  /* Worst case is waiting one second, so we can use that time to determine
     if we can sleep shorter than that */
  if (path)
    {
      apr_finfo_t finfo;

      err = FUNC8(&finfo, path, APR_FINFO_MTIME | APR_FINFO_LINK, pool);

      if (err)
        {
          FUNC7(err); /* Fall back on original behavior */
        }
      else if (finfo.mtime % APR_USEC_PER_SEC)
        {
          /* Very simplistic but safe approach:
              If the filesystem has < sec mtime we can be reasonably sure
              that the filesystem has some sub-second resolution.  On Windows
              it is likely to be sub-millisecond; on Linux systems it depends
              on the filesystem, ext4 is typically 1ms, 4ms or 10ms resolution.

             ## Perhaps find a better algorithm here. This will fail once
                in every 1000 cases on a millisecond precision filesystem
                if the mtime happens to be an exact second.

                But better to fail once in every thousand cases than every
                time, like we did before.

             Note for further research on algorithm:
               FAT32 has < 1 sec precision on ctime, but 2 sec on mtime.

               Linux/ext4 with CONFIG_HZ=250 has high resolution
               apr_time_now and although the filesystem timestamps
               have similar high precision they are only updated with
               a coarser 4ms resolution. */

          /* 10 milliseconds after now. */
#ifndef SVN_HI_RES_SLEEP_MS
#define SVN_HI_RES_SLEEP_MS 10
#endif
          then = now + FUNC2(SVN_HI_RES_SLEEP_MS);
        }

      /* Remove time taken to do stat() from sleep. */
      now = FUNC4();
    }

  if (now >= then)
    return; /* Passing negative values may suspend indefinitely (Windows) */

  /* (t < 1000 will be round to 0 in apr) */
  if (then - now < 1000)
    FUNC0(1000);
  else
    FUNC0(then - now);
}