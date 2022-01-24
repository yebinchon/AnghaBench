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
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ DBT ;

/* Variables and functions */
 int /*<<< orphan*/  DB_DBT_MALLOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

DBT *
FUNC1(DBT *dbt)
{
  FUNC0(dbt);
  dbt->flags |= DB_DBT_MALLOC;

  return dbt;
}