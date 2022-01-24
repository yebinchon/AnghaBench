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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_3__ {void* edited; void* skip; struct TYPE_3__* pb; } ;
typedef  TYPE_1__ added_node_baton_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 

__attribute__((used)) static svn_error_t *
FUNC1(added_node_baton_t *nb,
                                  apr_pool_t *scratch_pool)
{
  if (nb->edited)
    return SVN_NO_ERROR;

  if (nb->pb)
    {
      FUNC0(FUNC1(nb->pb, scratch_pool));

      if (nb->pb->skip)
        nb->skip = TRUE;
    }

  nb->edited = TRUE;

  return SVN_NO_ERROR;
}