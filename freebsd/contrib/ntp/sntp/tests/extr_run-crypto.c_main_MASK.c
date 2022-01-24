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
 int /*<<< orphan*/  test_MakeCMac ; 
 int /*<<< orphan*/  test_MakeMd5Mac ; 
 int /*<<< orphan*/  test_MakeSHA1Mac ; 
 int /*<<< orphan*/  test_PacketSizeNotMultipleOfFourBytes ; 
 int /*<<< orphan*/  test_VerifyCMAC ; 
 int /*<<< orphan*/  test_VerifyCorrectMD5 ; 
 int /*<<< orphan*/  test_VerifyFailure ; 
 int /*<<< orphan*/  test_VerifySHA1 ; 

int FUNC4(int argc, char *argv[])
{
  progname = argv[0];
  FUNC3();
  FUNC1("crypto.c");
  FUNC0(test_MakeMd5Mac, 15);
  FUNC0(test_MakeSHA1Mac, 16);
  FUNC0(test_MakeCMac, 17);
  FUNC0(test_VerifyCorrectMD5, 18);
  FUNC0(test_VerifySHA1, 19);
  FUNC0(test_VerifyCMAC, 20);
  FUNC0(test_VerifyFailure, 21);
  FUNC0(test_PacketSizeNotMultipleOfFourBytes, 22);

  return (FUNC2());
}