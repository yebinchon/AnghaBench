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
typedef  int /*<<< orphan*/  svn_temp_serializer__context_t ;
struct TYPE_3__ {int /*<<< orphan*/  created_path; int /*<<< orphan*/  copyroot_path; int /*<<< orphan*/  copyfrom_path; int /*<<< orphan*/  data_rep; int /*<<< orphan*/  prop_rep; } ;
typedef  TYPE_1__ svn_fs_x__noderev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const* const*,int) ; 

__attribute__((used)) static void
FUNC4(svn_temp_serializer__context_t *context,
                  svn_fs_x__noderev_t * const *noderev_p)
{
  const svn_fs_x__noderev_t *noderev = *noderev_p;
  if (noderev == NULL)
    return;

  /* serialize the representation struct itself */
  FUNC3(context,
                            (const void * const *)noderev_p,
                            sizeof(*noderev));

  /* serialize sub-structures */
  FUNC0(context, &noderev->prop_rep);
  FUNC0(context, &noderev->data_rep);

  FUNC1(context, &noderev->copyfrom_path);
  FUNC1(context, &noderev->copyroot_path);
  FUNC1(context, &noderev->created_path);

  /* return to the caller's nesting level */
  FUNC2(context);
}