#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_diff_t ;
typedef  int /*<<< orphan*/  svn_diff_file_options_t ;
struct TYPE_4__ {int /*<<< orphan*/  const* normalization_options; int /*<<< orphan*/ * sources; } ;
typedef  TYPE_1__ diff_mem_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_diff__mem_vtable ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC3(svn_diff_t **diff,
                          const svn_string_t *original,
                          const svn_string_t *modified,
                          const svn_string_t *latest,
                          const svn_string_t *ancestor,
                          const svn_diff_file_options_t *options,
                          apr_pool_t *pool)
{
  diff_mem_baton_t baton;

  FUNC1(&(baton.sources[0]), original, pool);
  FUNC1(&(baton.sources[1]), modified, pool);
  FUNC1(&(baton.sources[2]), latest, pool);
  FUNC1(&(baton.sources[3]), ancestor, pool);
  FUNC0(&baton, 4, pool);

  baton.normalization_options = options;

  return FUNC2(diff, &baton, &svn_diff__mem_vtable, pool);
}