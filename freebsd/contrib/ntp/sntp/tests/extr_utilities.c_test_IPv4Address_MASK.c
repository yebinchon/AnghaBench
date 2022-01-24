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
struct addrinfo {int dummy; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;

/* Variables and functions */
 struct addrinfo FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(void) {
	const char* ADDR = "192.0.2.10";

	sockaddr_u input = FUNC1(ADDR);
	struct addrinfo inputA = FUNC0(&input);

	FUNC2(ADDR, FUNC4(&input));
	FUNC2(ADDR, FUNC3(&inputA));
}