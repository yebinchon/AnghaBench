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
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {scalar_t__ nelts; } ;
typedef  TYPE_1__ apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_boolean_t
FUNC2(const apr_array_header_t *propchanges,
              apr_pool_t *scratch_pool)
{
  apr_array_header_t *props;

  FUNC1(FUNC0(propchanges, NULL, NULL, &props,
                                       scratch_pool));
  return (props->nelts != 0);
}