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
struct TYPE_3__ {int /*<<< orphan*/  proto_l2p_index; int /*<<< orphan*/  reps; int /*<<< orphan*/  fs; int /*<<< orphan*/  dir_props; int /*<<< orphan*/  file_props; int /*<<< orphan*/  changes; } ;
typedef  TYPE_1__ pack_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_END ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(pack_context_t *context,
                apr_pool_t *pool)
{
  apr_pool_t *scratch_pool = FUNC8(pool);
  const char *temp_name;
  const char *proto_index;
  apr_off_t offset = 0;

  /* lump all items into one bucket.  As target, use the bucket that
   * probably has the most entries already. */
  FUNC1(context->reps, context->changes);
  FUNC1(context->reps, context->file_props);
  FUNC1(context->reps, context->dir_props);

  /* Let the index code do the expensive L2P -> P2L transformation. */
  FUNC0(FUNC2(&temp_name,
                                               context->fs,
                                               context->reps,
                                               pool, scratch_pool));

  /* Append newly written segment to exisiting proto index file. */
  FUNC0(FUNC5(&proto_index, context->proto_l2p_index,
                               scratch_pool));

  FUNC0(FUNC4(context->proto_l2p_index, scratch_pool));
  FUNC0(FUNC3(temp_name, proto_index, scratch_pool));
  FUNC0(FUNC7(temp_name, FALSE, scratch_pool));
  FUNC0(FUNC6(context->proto_l2p_index, APR_END, &offset,
                           scratch_pool));

  /* Done. */
  FUNC9(scratch_pool);

  return SVN_NO_ERROR;
}