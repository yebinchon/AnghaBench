#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ segment_count; } ;
typedef  TYPE_1__ svn_membuffer_t ;
struct TYPE_9__ {char* id; } ;
typedef  TYPE_2__ svn_cache__info_t ;
typedef  scalar_t__ apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 

svn_cache__info_t *
FUNC4(apr_pool_t *pool)
{
  apr_uint32_t i;

  svn_membuffer_t *membuffer = FUNC1();
  svn_cache__info_t *info = FUNC0(pool, sizeof(*info));

  /* cache front-end specific data */

  info->id = "membuffer globals";

  /* collect info from shared cache back-end */

  for (i = 0; i < membuffer->segment_count; ++i)
    FUNC2(FUNC3(membuffer + i,
                                                          info));

  return info;
}