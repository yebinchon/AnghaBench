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
 int /*<<< orphan*/  test_GenerateAuthenticatedPacket ; 
 int /*<<< orphan*/  test_GenerateUnauthenticatedPacket ; 
 int /*<<< orphan*/  test_HandleCorrectPacket ; 
 int /*<<< orphan*/  test_HandleKodDemobilize ; 
 int /*<<< orphan*/  test_HandleKodRate ; 
 int /*<<< orphan*/  test_HandleServerAuthenticationFailure ; 
 int /*<<< orphan*/  test_HandleUnusablePacket ; 
 int /*<<< orphan*/  test_HandleUnusableServer ; 
 int /*<<< orphan*/  test_OffsetCalculationNegativeOffset ; 
 int /*<<< orphan*/  test_OffsetCalculationPositiveOffset ; 

int FUNC4(int argc, char *argv[])
{
  progname = argv[0];
  FUNC3();
  FUNC1("packetHandling.c");
  FUNC0(test_GenerateUnauthenticatedPacket, 17);
  FUNC0(test_GenerateAuthenticatedPacket, 18);
  FUNC0(test_OffsetCalculationPositiveOffset, 19);
  FUNC0(test_OffsetCalculationNegativeOffset, 20);
  FUNC0(test_HandleUnusableServer, 21);
  FUNC0(test_HandleUnusablePacket, 22);
  FUNC0(test_HandleServerAuthenticationFailure, 23);
  FUNC0(test_HandleKodDemobilize, 24);
  FUNC0(test_HandleKodRate, 25);
  FUNC0(test_HandleCorrectPacket, 26);

  return (FUNC2());
}