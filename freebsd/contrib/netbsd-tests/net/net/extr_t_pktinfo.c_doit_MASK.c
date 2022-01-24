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
struct sockaddr_in {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sockaddr_in*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct sockaddr_in*) ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct sockaddr_in sin;
	int s, c;
	s = FUNC3(&sin);
	c = FUNC0(&sin);
	FUNC2(s);
	FUNC1(s);
	FUNC1(c);
}