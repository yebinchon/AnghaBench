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
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {char* txn_id; } ;
typedef  TYPE_1__ revision_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_skel_t **skel_p,
                                   const revision_t *revision,
                                   apr_pool_t *pool)
{
  svn_skel_t *skel;

  /* Create the skel. */
  skel = FUNC2(pool);

  /* TXN_ID */
  FUNC3(FUNC4(revision->txn_id, pool), skel);

  /* "revision" */
  FUNC3(FUNC4("revision", pool), skel);

  /* Validate and return the skel. */
  if (! FUNC0(skel))
    return FUNC1("revision");
  *skel_p = skel;
  return SVN_NO_ERROR;
}