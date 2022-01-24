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
struct cfg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (struct cfg*,int) ; 
 int FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cfg*,int,int) ; 

__attribute__((used)) static int
FUNC5(struct cfg *cfg, char *arg)
{
	int a, v;
	char *c;
	
	a = FUNC2(arg, &c, 0);
	if (c==arg)
		return (1);
	if (*c == '=') {
		v = FUNC3(c+1, NULL, 0);
		FUNC4(cfg, a, v);
	}
	FUNC0("\treg 0x%04x=0x%08x\n", a, FUNC1(cfg, a));
	return (0);
}