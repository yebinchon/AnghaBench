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
struct torus {int /*<<< orphan*/ *** sw; int /*<<< orphan*/  z_sz; int /*<<< orphan*/  y_sz; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct torus*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct torus*,int,int,int,int,int,int,int) ; 
 scalar_t__ FUNC3 (struct torus*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
bool FUNC5(struct torus *t, int i, int j, int k)
{
	int jp1 = FUNC0(j + 1, t->y_sz);
	int km1 = FUNC0(k - 1, t->z_sz);
	int kp1 = FUNC0(k + 1, t->z_sz);

	if (FUNC3(t, i, j, k) &&
	    FUNC1(t, i, j, kp1,
			    FUNC4(t->sw[i][jp1][k],
						   t->sw[i][j][k],
						   t->sw[i][j][km1]))) {
		return true;
	}
	FUNC2(t, 0x650, i, j, k, i, j, k);

	if (FUNC3(t, i, jp1, k) &&
	    FUNC1(t, i, jp1, kp1,
			    FUNC4(t->sw[i][j][k],
						   t->sw[i][jp1][k],
						   t->sw[i][jp1][km1]))) {
		return true;
	}
	FUNC2(t, 0x650, i, j, k, i, jp1, k);
	return false;
}