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
struct torus {int x_sz; int y_sz; struct t_switch**** sw; } ;
struct t_switch {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct torus*,int,int,int const) ; 

__attribute__((used)) static
struct t_switch *FUNC2(struct torus *t, const int z)
{
	int x, dx, xm = t->x_sz / 2;
	int y, dy, ym = t->y_sz / 2;
	struct t_switch ****sw = t->sw;

	if (FUNC1(t, xm, ym, z))
		return sw[xm][ym][z];

	for (dx = 1, dy = 1; dx <= xm && dy <= ym; dx++, dy++) {

		x = FUNC0(xm - dx, t->x_sz);
		y = FUNC0(ym - dy, t->y_sz);
		if (FUNC1(t, x, y, z))
			return sw[x][y][z];

		x = FUNC0(xm + dx, t->x_sz);
		y = FUNC0(ym + dy, t->y_sz);
		if (FUNC1(t, x, y, z))
			return sw[x][y][z];
	}
	return NULL;
}