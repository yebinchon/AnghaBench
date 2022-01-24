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
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int FUNC1 (struct cfg*,int,int) ; 
 int FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cfg*,int,int,int) ; 

__attribute__((used)) static int
FUNC5(struct cfg *cfg, char *arg)
{
	int phy, reg, val;
	char *c, *d;
	
	phy = FUNC2(arg, &c, 0);
	if (c==arg)
		return (1);
	if (*c != '.')
		return (1);
	d = c+1;
	reg = FUNC2(d, &c, 0);
	if (d == c)
		return (1);
	if (*c == '=') {
		val = FUNC3(c+1, NULL, 0);
		FUNC4(cfg, phy, reg, val);
	}
	FUNC0("\treg %d.0x%02x=0x%04x\n", phy, reg, FUNC1(cfg, phy, reg));
	return (0);
}