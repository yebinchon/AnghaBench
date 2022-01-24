#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
struct TYPE_6__ {TYPE_4__* next; int /*<<< orphan*/  len; int /*<<< orphan*/  data; TYPE_1__* children; } ;
typedef  TYPE_2__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
struct TYPE_5__ {TYPE_2__* next; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const**,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC4(const svn_string_t **conflict_desc,
                        const svn_skel_t *skel,
                        svn_cancel_func_t cancel_func,
                        void *cancel_baton,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const svn_string_t *original;
  const svn_string_t *mine;
  const svn_string_t *incoming;
  const svn_string_t *incoming_base;
  const char *propname;

  /* Navigate to the property name.  */
  skel = skel->children->next;

  /* We need to copy these into SCRATCH_POOL in order to nul-terminate
     the values.  */
  propname = FUNC0(scratch_pool, skel->data, skel->len);
  original = FUNC1(skel->next, scratch_pool);
  mine = FUNC1(skel->next->next, scratch_pool);
  incoming = FUNC1(skel->next->next->next, scratch_pool);
  incoming_base = FUNC1(skel->next->next->next->next, scratch_pool);

  return FUNC3(FUNC2(conflict_desc,
                                           propname,
                                           original, mine,
                                           incoming, incoming_base,
                                           cancel_func, cancel_baton,
                                           result_pool, scratch_pool));
}