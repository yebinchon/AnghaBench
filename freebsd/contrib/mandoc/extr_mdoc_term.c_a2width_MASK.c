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
struct termp {int dummy; } ;
struct roffsu {int /*<<< orphan*/  scale; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct roffsu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCALE_MAX ; 
 char* FUNC1 (char const*,struct roffsu*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct termp const*,struct roffsu*) ; 
 int /*<<< orphan*/  FUNC3 (struct termp const*,char const*) ; 

__attribute__((used)) static int
FUNC4(const struct termp *p, const char *v)
{
	struct roffsu	 su;
	const char	*end;

	end = FUNC1(v, &su, SCALE_MAX);
	if (end == NULL || *end != '\0') {
		FUNC0(&su, FUNC3(p, v));
		su.scale /= FUNC3(p, "0");
	}
	return FUNC2(p, &su);
}