#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_client__merge_path_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  compare_merge_path_t_as_paths ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(apr_array_header_t *children_with_mergeinfo,
                      const svn_client__merge_path_t *insert_element,
                      apr_pool_t *pool)
{
  int insert_index;
  const svn_client__merge_path_t *new_element;

  /* Find where to insert the new element */
  insert_index =
    FUNC2(children_with_mergeinfo, &insert_element,
                                  compare_merge_path_t_as_paths);

  new_element = FUNC0(insert_element, pool);
  FUNC1(children_with_mergeinfo, &new_element, insert_index);
}