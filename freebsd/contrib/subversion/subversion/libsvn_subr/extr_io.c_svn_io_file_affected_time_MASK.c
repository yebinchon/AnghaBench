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
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_3__ {int /*<<< orphan*/  mtime; } ;
typedef  TYPE_1__ apr_finfo_t ;

/* Variables and functions */
 int APR_FINFO_LINK ; 
 int APR_FINFO_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,int,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC2(apr_time_t *apr_time,
                          const char *path,
                          apr_pool_t *pool)
{
  apr_finfo_t finfo;

  FUNC0(FUNC1(&finfo, path, APR_FINFO_MIN | APR_FINFO_LINK, pool));

  *apr_time = finfo.mtime;

  return SVN_NO_ERROR;
}