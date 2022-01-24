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
struct torus {int /*<<< orphan*/  z_sz; int /*<<< orphan*/  y_sz; int /*<<< orphan*/  x_sz; struct t_switch**** sw; } ;
struct t_switch {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct torus*,int,struct t_switch*,struct t_switch*) ; 

__attribute__((used)) static
void FUNC2(struct torus *t, int i, int j, int k)
{
	struct t_switch ****sw = t->sw;
	int ip1 = FUNC0(i + 1, t->x_sz);
	int jp1 = FUNC0(j + 1, t->y_sz);
	int kp1 = FUNC0(k + 1, t->z_sz);

	/*
	 * Don't waste time/code checking return status of link_tswitches()
	 * here.  It is unlikely to fail, and the result of any failure here
	 * will be caught elsewhere anyway.
	 */
	if (sw[i][j][k] && sw[ip1][j][k])
		FUNC1(t, 0, sw[i][j][k], sw[ip1][j][k]);

	if (sw[i][jp1][k] && sw[ip1][jp1][k])
		FUNC1(t, 0, sw[i][jp1][k], sw[ip1][jp1][k]);

	if (sw[i][j][kp1] && sw[ip1][j][kp1])
		FUNC1(t, 0, sw[i][j][kp1], sw[ip1][j][kp1]);

	if (sw[i][jp1][kp1] && sw[ip1][jp1][kp1])
		FUNC1(t, 0, sw[i][jp1][kp1], sw[ip1][jp1][kp1]);


	if (sw[i][j][k] && sw[i][jp1][k])
		FUNC1(t, 1, sw[i][j][k], sw[i][jp1][k]);

	if (sw[ip1][j][k] && sw[ip1][jp1][k])
		FUNC1(t, 1, sw[ip1][j][k], sw[ip1][jp1][k]);

	if (sw[i][j][kp1] && sw[i][jp1][kp1])
		FUNC1(t, 1, sw[i][j][kp1], sw[i][jp1][kp1]);

	if (sw[ip1][j][kp1] && sw[ip1][jp1][kp1])
		FUNC1(t, 1, sw[ip1][j][kp1], sw[ip1][jp1][kp1]);


	if (sw[i][j][k] && sw[i][j][kp1])
		FUNC1(t, 2, sw[i][j][k], sw[i][j][kp1]);

	if (sw[ip1][j][k] && sw[ip1][j][kp1])
		FUNC1(t, 2, sw[ip1][j][k], sw[ip1][j][kp1]);

	if (sw[i][jp1][k] && sw[i][jp1][kp1])
		FUNC1(t, 2, sw[i][jp1][k], sw[i][jp1][kp1]);

	if (sw[ip1][jp1][k] && sw[ip1][jp1][kp1])
		FUNC1(t, 2, sw[ip1][jp1][k], sw[ip1][jp1][kp1]);
}