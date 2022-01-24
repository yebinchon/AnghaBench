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
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_4__ {int /*<<< orphan*/  revision; int /*<<< orphan*/  bc_url; } ;
typedef  TYPE_1__ baseline_info_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static baseline_info_t *
FUNC2(const char *bc_url,
                   svn_revnum_t revision,
                   apr_pool_t *pool)
{
  baseline_info_t *result = FUNC0(pool, sizeof(*result));

  result->bc_url = FUNC1(pool, bc_url);
  result->revision = revision;

  return result;
}