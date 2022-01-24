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
typedef  scalar_t__ svn_boolean_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_int32_t ;
struct TYPE_3__ {int protection; } ;
typedef  TYPE_1__ apr_finfo_t ;
typedef  int /*<<< orphan*/  apr_fileperms_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int APR_CREATE ; 
 int APR_EXCL ; 
 int APR_FREADONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int APR_WRITE ; 
 int /*<<< orphan*/  ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  SVN__APR_FINFO_READONLY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static apr_status_t
FUNC4(apr_file_t **f,
          const char *fname_apr,
          apr_int32_t flag,
          apr_fileperms_t perm,
          svn_boolean_t retry_on_failure,
          apr_pool_t *pool)
{
  apr_status_t status = FUNC2(f, fname_apr, flag, perm, pool);

  if (retry_on_failure)
    {
#ifdef WIN32
      if (status == APR_FROM_OS_ERROR(ERROR_ACCESS_DENIED))
        {
          if ((flag & (APR_CREATE | APR_EXCL)) == (APR_CREATE | APR_EXCL))
            return status; /* Can't create if there is something */

          if (flag & (APR_WRITE | APR_CREATE))
            {
              apr_finfo_t finfo;

              if (!apr_stat(&finfo, fname_apr, SVN__APR_FINFO_READONLY, pool))
                {
                  if (finfo.protection & APR_FREADONLY)
                    return status; /* Retrying won't fix this */
                }
            }
        }
#endif

      FUNC1(status, FUNC2(f, fname_apr, flag, perm, pool));
    }
  return status;
}