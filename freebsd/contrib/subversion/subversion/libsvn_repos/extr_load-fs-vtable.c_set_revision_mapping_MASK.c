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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(apr_hash_t *rev_map,
                     svn_revnum_t from_rev,
                     svn_revnum_t to_rev)
{
  svn_revnum_t *mapped_revs = FUNC2(FUNC0(rev_map),
                                         sizeof(svn_revnum_t) * 2);
  mapped_revs[0] = from_rev;
  mapped_revs[1] = to_rev;
  FUNC1(rev_map, mapped_revs,
               sizeof(svn_revnum_t), mapped_revs + 1);
}