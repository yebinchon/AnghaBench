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
struct TYPE_5__ {void* src_right_version; void* src_left_version; void* merged_file; void* my_file; void* their_file; void* base_file; void* mime_type; void* property_name; void* path; } ;
typedef  TYPE_1__ svn_wc_conflict_description_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_wc_conflict_description_t *
FUNC3(const svn_wc_conflict_description_t *conflict,
                         apr_pool_t *pool)
{
  svn_wc_conflict_description_t *new_conflict;

  new_conflict = FUNC0(pool, sizeof(*new_conflict));

  /* Shallow copy all members. */
  *new_conflict = *conflict;

  if (conflict->path)
    new_conflict->path = FUNC1(pool, conflict->path);
  if (conflict->property_name)
    new_conflict->property_name = FUNC1(pool, conflict->property_name);
  if (conflict->mime_type)
    new_conflict->mime_type = FUNC1(pool, conflict->mime_type);
  /* NOTE: We cannot make a deep copy of adm_access. */
  if (conflict->base_file)
    new_conflict->base_file = FUNC1(pool, conflict->base_file);
  if (conflict->their_file)
    new_conflict->their_file = FUNC1(pool, conflict->their_file);
  if (conflict->my_file)
    new_conflict->my_file = FUNC1(pool, conflict->my_file);
  if (conflict->merged_file)
    new_conflict->merged_file = FUNC1(pool, conflict->merged_file);
  if (conflict->src_left_version)
    new_conflict->src_left_version =
      FUNC2(conflict->src_left_version, pool);
  if (conflict->src_right_version)
    new_conflict->src_right_version =
      FUNC2(conflict->src_right_version, pool);

  return new_conflict;
}