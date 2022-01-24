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
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
struct TYPE_3__ {scalar_t__ creation_date; scalar_t__ expiration_date; int /*<<< orphan*/  comment; int /*<<< orphan*/  owner; int /*<<< orphan*/  token; } ;
typedef  TYPE_1__ svn_lock_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_xml_normal ; 

void
FUNC4(svn_stringbuf_t **sb,
                       const svn_lock_t *lock,
                       apr_pool_t *pool)
{
  /* "<lock>" */
  FUNC3(sb, pool, svn_xml_normal, "lock", SVN_VA_NULL);

  /* "<token>xx</token>" */
  FUNC0(sb, pool, "token", lock->token);

  /* "<owner>xx</owner>" */
  FUNC0(sb, pool, "owner", lock->owner);

  /* "<comment>xx</comment>" */
  FUNC0(sb, pool, "comment", lock->comment);

  /* "<created>xx</created>" */
  FUNC0(sb, pool, "created",
                           FUNC1(lock->creation_date, pool));

  /* "<expires>xx</expires>" */
  if (lock->expiration_date != 0)
    FUNC0(sb, pool, "expires",
                             FUNC1(lock->expiration_date, pool));

  /* "</lock>" */
  FUNC2(sb, pool, "lock");
}