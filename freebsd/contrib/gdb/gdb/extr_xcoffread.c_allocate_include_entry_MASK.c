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
typedef  int /*<<< orphan*/  InclTable ;

/* Variables and functions */
 int INITIAL_INCLUDE_TABLE_LENGTH ; 
 int inclIndx ; 
 int inclLength ; 
 int /*<<< orphan*/ * inclTable ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3 (void)
{
  if (inclTable == NULL)
    {
      inclTable = (InclTable *)
	FUNC1 (sizeof (InclTable) * INITIAL_INCLUDE_TABLE_LENGTH);
      FUNC0 (inclTable,
	      '\0', sizeof (InclTable) * INITIAL_INCLUDE_TABLE_LENGTH);
      inclLength = INITIAL_INCLUDE_TABLE_LENGTH;
      inclIndx = 0;
    }
  else if (inclIndx >= inclLength)
    {
      inclLength += INITIAL_INCLUDE_TABLE_LENGTH;
      inclTable = (InclTable *)
	FUNC2 (inclTable, sizeof (InclTable) * inclLength);
      FUNC0 (inclTable + inclLength - INITIAL_INCLUDE_TABLE_LENGTH,
	      '\0', sizeof (InclTable) * INITIAL_INCLUDE_TABLE_LENGTH);
    }
}