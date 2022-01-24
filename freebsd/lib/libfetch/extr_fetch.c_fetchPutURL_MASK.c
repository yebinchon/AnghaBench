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
struct url {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct url*) ; 
 struct url* FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (struct url*,char const*) ; 

FILE *
FUNC3(const char *URL, const char *flags)
{
	struct url *u;
	FILE *f;

	if ((u = FUNC1(URL)) == NULL)
		return (NULL);

	f = FUNC2(u, flags);

	FUNC0(u);
	return (f);
}