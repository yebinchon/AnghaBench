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
typedef  int /*<<< orphan*/  svn_rangelist_t ;
typedef  scalar_t__ svn_mergeinfo_t ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  inheritable; } ;
typedef  TYPE_1__ svn_merge_range_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_rangelist_t **filtered_rangelist,
                                      const char *source_rel_path,
                                      svn_mergeinfo_t implicit_mergeinfo,
                                      svn_merge_range_t *requested_range,
                                      apr_pool_t *pool)
{
  /* Make the REQUESTED_RANGE into a rangelist. */
  svn_rangelist_t *requested_rangelist =
    FUNC2(requested_range->start, requested_range->end,
                              requested_range->inheritable, pool);

  *filtered_rangelist = NULL;

  /* For forward merges: If the IMPLICIT_MERGEINFO already describes ranges
     associated with SOURCE_REL_PATH then filter those ranges out. */
  if (implicit_mergeinfo
      && (requested_range->start < requested_range->end))
    {
      svn_rangelist_t *implied_rangelist =
                        FUNC1(implicit_mergeinfo, source_rel_path);

      if (implied_rangelist)
        FUNC0(FUNC3(filtered_rangelist,
                                     implied_rangelist,
                                     requested_rangelist,
                                     FALSE, pool));
    }

  /* If no filtering was performed the filtered rangelist is
     simply the requested rangelist.*/
  if (! (*filtered_rangelist))
    *filtered_rangelist = requested_rangelist;

  return SVN_NO_ERROR;
}