#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* children; } ;
typedef  TYPE_3__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_12__ {int /*<<< orphan*/  txn_id; } ;
typedef  TYPE_4__ revision_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_10__ {TYPE_1__* next; } ;
struct TYPE_9__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 

svn_error_t *
FUNC4(revision_t **revision_p,
                                 svn_skel_t *skel,
                                 apr_pool_t *pool)
{
  revision_t *revision;

  /* Validate the skel. */
  if (! FUNC2(skel))
    return FUNC3("revision");

  /* Create the returned structure */
  revision = FUNC0(pool, sizeof(*revision));
  revision->txn_id = FUNC1(pool, skel->children->next->data,
                                    skel->children->next->len);

  /* Return the structure. */
  *revision_p = revision;
  return SVN_NO_ERROR;
}