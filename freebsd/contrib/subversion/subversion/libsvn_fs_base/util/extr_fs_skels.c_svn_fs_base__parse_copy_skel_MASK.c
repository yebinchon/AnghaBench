#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_6__* children; } ;
typedef  TYPE_4__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_15__ {int /*<<< orphan*/  dst_noderev_id; void* src_txn_id; void* src_path; int /*<<< orphan*/  kind; } ;
typedef  TYPE_5__ copy_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_16__ {TYPE_3__* next; } ;
struct TYPE_13__ {TYPE_2__* next; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_12__ {TYPE_1__* next; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_11__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_5__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  copy_kind_real ; 
 int /*<<< orphan*/  copy_kind_soft ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_6__*,char*) ; 

svn_error_t *
FUNC6(copy_t **copy_p,
                             svn_skel_t *skel,
                             apr_pool_t *pool)
{
  copy_t *copy;

  /* Validate the skel. */
  if (! FUNC2(skel))
    return FUNC3("copy");

  /* Create the returned structure */
  copy = FUNC0(pool, sizeof(*copy));

  /* KIND */
  if (FUNC5(skel->children, "soft-copy"))
    copy->kind = copy_kind_soft;
  else
    copy->kind = copy_kind_real;

  /* SRC-PATH */
  copy->src_path = FUNC1(pool,
                                  skel->children->next->data,
                                  skel->children->next->len);

  /* SRC-TXN-ID */
  copy->src_txn_id = FUNC1(pool,
                                    skel->children->next->next->data,
                                    skel->children->next->next->len);

  /* DST-NODE-ID */
  copy->dst_noderev_id
    = FUNC4(skel->children->next->next->next->data,
                            skel->children->next->next->next->len, pool);

  /* Return the structure. */
  *copy_p = copy;
  return SVN_NO_ERROR;
}