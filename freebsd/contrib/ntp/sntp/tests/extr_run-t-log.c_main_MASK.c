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
 int /*<<< orphan*/  testChangePrognameInMysyslog ; 
 int /*<<< orphan*/  testOpenLogfileTest ; 
 int /*<<< orphan*/  testWriteInCustomLogfile ; 

int FUNC4(int argc, char *argv[])
{
  progname = argv[0];
  FUNC3();
  FUNC1("t-log.c");
  FUNC0(testChangePrognameInMysyslog, 10);
  FUNC0(testOpenLogfileTest, 11);
  FUNC0(testWriteInCustomLogfile, 12);

  return (FUNC2());
}