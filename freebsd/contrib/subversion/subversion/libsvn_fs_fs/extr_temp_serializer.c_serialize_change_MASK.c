#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_temp_serializer__context_t ;
struct TYPE_6__ {int /*<<< orphan*/  copyfrom_path; int /*<<< orphan*/  node_rev_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
struct TYPE_7__ {TYPE_2__ info; TYPE_1__ path; } ;
typedef  TYPE_3__ change_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const* const*,int) ; 

__attribute__((used)) static void
FUNC4(svn_temp_serializer__context_t *context,
                 change_t * const *change_p)
{
  const change_t * change = *change_p;
  if (change == NULL)
    return;

  /* serialize the change struct itself */
  FUNC3(context,
                            (const void * const *)change_p,
                            sizeof(*change));

  /* serialize sub-structures */
  FUNC0(context, &change->info.node_rev_id);

  FUNC1(context, &change->path.data);
  FUNC1(context, &change->info.copyfrom_path);

  /* return to the caller's nesting level */
  FUNC2(context);
}