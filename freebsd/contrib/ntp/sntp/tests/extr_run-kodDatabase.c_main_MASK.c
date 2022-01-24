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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  test_AddDuplicate ; 
 int /*<<< orphan*/  test_DeleteEntry ; 
 int /*<<< orphan*/  test_MultipleEntryHandling ; 
 int /*<<< orphan*/  test_NoMatchInSearch ; 
 int /*<<< orphan*/  test_SingleEntryHandling ; 

int FUNC4(int argc, char *argv[])
{
  progname = argv[0];
  FUNC3();
  FUNC1("kodDatabase.c");
  FUNC0(test_SingleEntryHandling, 14);
  FUNC0(test_MultipleEntryHandling, 15);
  FUNC0(test_NoMatchInSearch, 16);
  FUNC0(test_AddDuplicate, 17);
  FUNC0(test_DeleteEntry, 18);

  return (FUNC2());
}