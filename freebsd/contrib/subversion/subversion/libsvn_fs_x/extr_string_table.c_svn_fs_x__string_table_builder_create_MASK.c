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
struct TYPE_5__ {int /*<<< orphan*/  tables; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_1__ string_table_builder_t ;
typedef  int /*<<< orphan*/  builder_table_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 

string_table_builder_t *
FUNC3(apr_pool_t *result_pool)
{
  string_table_builder_t *result = FUNC2(result_pool, sizeof(*result));
  result->pool = result_pool;
  result->tables = FUNC1(result_pool, 1, sizeof(builder_table_t *));

  FUNC0(result);

  return result;
}