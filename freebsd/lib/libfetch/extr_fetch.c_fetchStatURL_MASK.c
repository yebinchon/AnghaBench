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
struct url_stat {int dummy; } ;
struct url {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct url*) ; 
 struct url* FUNC1 (char const*) ; 
 int FUNC2 (struct url*,struct url_stat*,char const*) ; 

int
FUNC3(const char *URL, struct url_stat *us, const char *flags)
{
	struct url *u;
	int s;

	if ((u = FUNC1(URL)) == NULL)
		return (-1);

	s = FUNC2(u, us, flags);

	FUNC0(u);
	return (s);
}