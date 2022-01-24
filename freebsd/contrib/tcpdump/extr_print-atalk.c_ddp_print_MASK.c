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
typedef  int /*<<< orphan*/  u_short ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct atNBP {int dummy; } ;
struct atATP {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct atATP const*,int /*<<< orphan*/ ) ; 
#define  ddpATP 130 
#define  ddpEIGRP 129 
#define  ddpNBP 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct atNBP const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  type2str ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo,
          register const u_char *bp, register u_int length, register int t,
          register u_short snet, register u_char snode, u_char skt)
{

	switch (t) {

	case ddpNBP:
		FUNC3(ndo, (const struct atNBP *)bp, length, snet, snode, skt);
		break;

	case ddpATP:
		FUNC1(ndo, (const struct atATP *)bp, length);
		break;

	case ddpEIGRP:
		FUNC2(ndo, bp, length);
		break;

	default:
		FUNC0((ndo, " at-%s %d", FUNC4(type2str, NULL, t), length));
		break;
	}
}