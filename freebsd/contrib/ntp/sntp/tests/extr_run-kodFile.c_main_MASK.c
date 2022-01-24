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
 int /*<<< orphan*/  test_ReadCorrectFile ; 
 int /*<<< orphan*/  test_ReadEmptyFile ; 
 int /*<<< orphan*/  test_ReadFileWithBlankLines ; 
 int /*<<< orphan*/  test_WriteEmptyFile ; 
 int /*<<< orphan*/  test_WriteFileWithMultipleEntries ; 
 int /*<<< orphan*/  test_WriteFileWithSingleEntry ; 

int FUNC4(int argc, char *argv[])
{
  progname = argv[0];
  FUNC3();
  FUNC1("kodFile.c");
  FUNC0(test_ReadEmptyFile, 19);
  FUNC0(test_ReadCorrectFile, 20);
  FUNC0(test_ReadFileWithBlankLines, 21);
  FUNC0(test_WriteEmptyFile, 22);
  FUNC0(test_WriteFileWithSingleEntry, 23);
  FUNC0(test_WriteFileWithMultipleEntries, 24);

  return (FUNC2());
}