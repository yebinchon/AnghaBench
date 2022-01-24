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
struct torus {int x_sz; int y_sz; int z_sz; int /*<<< orphan*/ *** sw; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static
unsigned FUNC2(struct torus *t, int i, int j, int k)
{
	unsigned fp;
	int ip1, jp1, kp1;
	int x_sz_gt1, y_sz_gt1, z_sz_gt1;

	x_sz_gt1 = t->x_sz > 1;
	y_sz_gt1 = t->y_sz > 1;
	z_sz_gt1 = t->z_sz > 1;

	ip1 = FUNC0(i + 1, t->x_sz);
	jp1 = FUNC0(j + 1, t->y_sz);
	kp1 = FUNC0(k + 1, t->z_sz);

	fp  = FUNC1(t->sw[i][j][k], 0, 0, 0);
	fp |= FUNC1(t->sw[ip1][j][k], x_sz_gt1, 0, 0);
	fp |= FUNC1(t->sw[i][jp1][k], 0, y_sz_gt1, 0);
	fp |= FUNC1(t->sw[ip1][jp1][k], x_sz_gt1, y_sz_gt1, 0);
	fp |= FUNC1(t->sw[i][j][kp1], 0, 0, z_sz_gt1);
	fp |= FUNC1(t->sw[ip1][j][kp1], x_sz_gt1, 0, z_sz_gt1);
	fp |= FUNC1(t->sw[i][jp1][kp1], 0, y_sz_gt1, z_sz_gt1);
	fp |= FUNC1(t->sw[ip1][jp1][kp1], x_sz_gt1, y_sz_gt1, z_sz_gt1);

	fp |= x_sz_gt1 << 8;
	fp |= y_sz_gt1 << 9;
	fp |= z_sz_gt1 << 10;

	return fp;
}