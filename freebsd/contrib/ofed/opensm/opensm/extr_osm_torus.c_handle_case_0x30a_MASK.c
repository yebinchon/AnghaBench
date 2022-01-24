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
struct torus {int /*<<< orphan*/ *** sw; int /*<<< orphan*/  y_sz; int /*<<< orphan*/  x_sz; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct torus*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct torus*,int,int,int,int,int,int,int) ; 
 scalar_t__ FUNC3 (struct torus*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
bool FUNC5(struct torus *t, int i, int j, int k)
{
	int im1 = FUNC0(i - 1, t->x_sz);
	int ip1 = FUNC0(i + 1, t->x_sz);
	int jp1 = FUNC0(j + 1, t->y_sz);

	if (FUNC3(t, i, j, k) &&
	    FUNC1(t, ip1, j, k,
			    FUNC4(t->sw[i][jp1][k],
						   t->sw[i][j][k],
						   t->sw[im1][j][k]))) {
		return true;
	}
	FUNC2(t, 0x30a, i, j, k, i, j, k);

	if (FUNC3(t, i, jp1, k) &&
	    FUNC1(t, ip1, jp1, k,
			    FUNC4(t->sw[i][j][k],
						   t->sw[i][jp1][k],
						   t->sw[im1][jp1][k]))) {
		return true;
	}
	FUNC2(t, 0x30a, i, j, k, i, jp1, k);
	return false;
}