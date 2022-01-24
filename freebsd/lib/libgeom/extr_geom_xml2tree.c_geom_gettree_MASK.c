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
struct gmesh {int dummy; } ;

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 () ; 
 int FUNC2 (struct gmesh*,char*) ; 

int
FUNC3(struct gmesh *gmp)
{
	char *p;
	int error;

	p = FUNC1();
	if (p == NULL)
		return (errno);
	error = FUNC2(gmp, p);
	FUNC0(p);
	return (error);
}