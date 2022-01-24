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
 int /*<<< orphan*/  test_IPv4Address ; 
 int /*<<< orphan*/  test_IPv6Address ; 
 int /*<<< orphan*/  test_LfpOutputBinaryFormat ; 
 int /*<<< orphan*/  test_LfpOutputDecimalFormat ; 
 int /*<<< orphan*/  test_PktOutput ; 
 int /*<<< orphan*/  test_SetLiVnMode1 ; 
 int /*<<< orphan*/  test_SetLiVnMode2 ; 

int FUNC4(int argc, char *argv[])
{
  progname = argv[0];
  FUNC3();
  FUNC1("utilities.c");
  FUNC0(test_IPv4Address, 16);
  FUNC0(test_IPv6Address, 17);
  FUNC0(test_SetLiVnMode1, 18);
  FUNC0(test_SetLiVnMode2, 19);
  FUNC0(test_PktOutput, 20);
  FUNC0(test_LfpOutputBinaryFormat, 21);
  FUNC0(test_LfpOutputDecimalFormat, 22);

  return (FUNC2());
}