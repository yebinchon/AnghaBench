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
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_PROP_REVISION_AUTHOR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_DATE ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_LOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC1(apr_hash_t *revprops)
{
  if (revprops)
    {
      FUNC0(revprops, SVN_PROP_REVISION_AUTHOR, NULL);
      FUNC0(revprops, SVN_PROP_REVISION_DATE, NULL);
      FUNC0(revprops, SVN_PROP_REVISION_LOG, NULL);
    }
}