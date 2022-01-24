#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_x__id_t ;
struct TYPE_9__ {int /*<<< orphan*/ * owner; } ;
typedef  TYPE_2__ svn_fs_x__id_context_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
struct TYPE_8__ {TYPE_2__* fsap_data; int /*<<< orphan*/ * vtable; } ;
struct TYPE_10__ {TYPE_1__ generic_id; int /*<<< orphan*/  noderev_id; } ;
typedef  TYPE_3__ fs_x__id_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  id_vtable ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 

svn_fs_id_t *
FUNC4(svn_fs_x__id_context_t *context,
                    const svn_fs_x__id_t *noderev_id,
                    apr_pool_t *result_pool)
{
  fs_x__id_t *id;

  /* Special case: NULL IDs */
  if (!FUNC3(noderev_id))
    return NULL;

  /* In theory, the CONTEXT might not be owned by POOL.  It's FS might even
     have been closed.  Make sure we have a context owned by POOL. */
  if (context->owner != result_pool)
    context = FUNC2(FUNC1(context), result_pool);

  /* Finally, construct the ID object. */
  id = FUNC0(result_pool, sizeof(*id));
  id->noderev_id = *noderev_id;

  id->generic_id.vtable = &id_vtable;
  id->generic_id.fsap_data = context;

  return (svn_fs_id_t *)id;
}