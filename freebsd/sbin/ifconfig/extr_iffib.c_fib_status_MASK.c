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
struct ifreq {scalar_t__ ifr_fib; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ RT_DEFAULT_FIB ; 
 int /*<<< orphan*/  SIOCGIFFIB ; 
 int /*<<< orphan*/  SIOCGTUNFIB ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(int s)
{
	struct ifreq ifr;

	FUNC1(&ifr, 0, sizeof(ifr));
	FUNC3(ifr.ifr_name, name, sizeof(ifr.ifr_name));
	if (FUNC0(s, SIOCGIFFIB, (caddr_t)&ifr) == 0 &&
	    ifr.ifr_fib != RT_DEFAULT_FIB)
		FUNC2("\tfib: %u\n", ifr.ifr_fib);

	FUNC1(&ifr, 0, sizeof(ifr));
	FUNC3(ifr.ifr_name, name, sizeof(ifr.ifr_name));
	if (FUNC0(s, SIOCGTUNFIB, (caddr_t)&ifr) == 0 &&
	    ifr.ifr_fib != RT_DEFAULT_FIB)
		FUNC2("\ttunnelfib: %u\n", ifr.ifr_fib);
}