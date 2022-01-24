#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* prop_value_incoming_new; void* prop_value_incoming_old; void* prop_value_working; void* prop_value_base; void* their_abspath; void* prop_reject_abspath; void* src_right_version; void* src_left_version; void* merged_file; void* my_abspath; void* base_abspath; void* mime_type; void* property_name; void* local_abspath; } ;
typedef  TYPE_1__ svn_wc_conflict_description2_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ *) ; 
 void* FUNC3 (void*,int /*<<< orphan*/ *) ; 

svn_wc_conflict_description2_t *
FUNC4(const svn_wc_conflict_description2_t *conflict,
                                  apr_pool_t *pool)
{
  svn_wc_conflict_description2_t *new_conflict;

  new_conflict = FUNC0(pool, sizeof(*new_conflict));

  /* Shallow copy all members. */
  *new_conflict = *conflict;

  if (conflict->local_abspath)
    new_conflict->local_abspath = FUNC1(pool, conflict->local_abspath);
  if (conflict->property_name)
    new_conflict->property_name = FUNC1(pool, conflict->property_name);
  if (conflict->mime_type)
    new_conflict->mime_type = FUNC1(pool, conflict->mime_type);
  if (conflict->base_abspath)
    new_conflict->base_abspath = FUNC1(pool, conflict->base_abspath);
  if (conflict->their_abspath)
    new_conflict->their_abspath = FUNC1(pool, conflict->their_abspath);
  if (conflict->my_abspath)
    new_conflict->my_abspath = FUNC1(pool, conflict->my_abspath);
  if (conflict->merged_file)
    new_conflict->merged_file = FUNC1(pool, conflict->merged_file);
  if (conflict->src_left_version)
    new_conflict->src_left_version =
      FUNC3(conflict->src_left_version, pool);
  if (conflict->src_right_version)
    new_conflict->src_right_version =
      FUNC3(conflict->src_right_version, pool);

  /* ### For property conflicts, cd2 stores prop_reject_abspath in
   * ### their_abspath, and stores theirs_abspath in merged_file. */
  if (conflict->prop_reject_abspath)
    new_conflict->prop_reject_abspath = new_conflict->their_abspath;

  if (conflict->prop_value_base)
    new_conflict->prop_value_base =
      FUNC2(conflict->prop_value_base, pool);
  if (conflict->prop_value_working)
    new_conflict->prop_value_working =
      FUNC2(conflict->prop_value_working, pool);
  if (conflict->prop_value_incoming_old)
    new_conflict->prop_value_incoming_old =
      FUNC2(conflict->prop_value_incoming_old, pool);
  if (conflict->prop_value_incoming_new)
    new_conflict->prop_value_incoming_new =
      FUNC2(conflict->prop_value_incoming_new, pool);

  return new_conflict;
}