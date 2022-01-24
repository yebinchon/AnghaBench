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
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
struct TYPE_4__ {int /*<<< orphan*/  expiration_date; int /*<<< orphan*/  creation_date; int /*<<< orphan*/  path; int /*<<< orphan*/  comment; int /*<<< orphan*/  owner; int /*<<< orphan*/  token; } ;
typedef  TYPE_1__ svn_lock_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC5(const svn_ra_svn__list_t *list,
                               apr_pool_t *pool,
                               svn_lock_t **lock)
{
  const char *cdate, *edate;
  *lock = FUNC2(pool);
  FUNC0(FUNC3(list, "ccc(?c)c(?c)", &(*lock)->path,
                                  &(*lock)->token, &(*lock)->owner,
                                  &(*lock)->comment, &cdate, &edate));
  (*lock)->path = FUNC1((*lock)->path, pool);
  FUNC0(FUNC4(&(*lock)->creation_date, cdate, pool));
  if (edate)
    FUNC0(FUNC4(&(*lock)->expiration_date, edate, pool));
  return SVN_NO_ERROR;
}