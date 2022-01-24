#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {char* src_txn_id; char* src_path; scalar_t__ kind; int /*<<< orphan*/  dst_noderev_id; } ;
typedef  TYPE_2__ copy_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ copy_kind_real ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(svn_skel_t **skel_p,
                               const copy_t *copy,
                               apr_pool_t *pool)
{
  svn_skel_t *skel;
  svn_string_t *tmp_str;

  /* Create the skel. */
  skel = FUNC3(pool);

  /* DST-NODE-ID */
  tmp_str = FUNC2(copy->dst_noderev_id, pool);
  FUNC5(FUNC4(tmp_str->data, tmp_str->len, pool),
                    skel);

  /* SRC-TXN-ID */
  if ((copy->src_txn_id) && (*copy->src_txn_id))
    FUNC5(FUNC6(copy->src_txn_id, pool), skel);
  else
    FUNC5(FUNC4(NULL, 0, pool), skel);

  /* SRC-PATH */
  if ((copy->src_path) && (*copy->src_path))
    FUNC5(FUNC6(copy->src_path, pool), skel);
  else
    FUNC5(FUNC4(NULL, 0, pool), skel);

  /* "copy" */
  if (copy->kind == copy_kind_real)
    FUNC5(FUNC6("copy", pool), skel);
  else
    FUNC5(FUNC6("soft-copy", pool), skel);

  /* Validate and return the skel. */
  if (! FUNC0(skel))
    return FUNC1("copy");
  *skel_p = skel;
  return SVN_NO_ERROR;
}