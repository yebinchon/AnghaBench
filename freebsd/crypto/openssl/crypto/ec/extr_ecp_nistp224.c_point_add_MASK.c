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
typedef  int /*<<< orphan*/  widefelem ;
typedef  scalar_t__ limb ;
typedef  int /*<<< orphan*/  const felem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(felem x3, felem y3, felem z3,
                      const felem x1, const felem y1, const felem z1,
                      const int mixed, const felem x2, const felem y2,
                      const felem z2)
{
    felem ftmp, ftmp2, ftmp3, ftmp4, ftmp5, x_out, y_out, z_out;
    widefelem tmp, tmp2;
    limb z1_is_zero, z2_is_zero, x_equal, y_equal;

    if (!mixed) {
        /* ftmp2 = z2^2 */
        FUNC8(tmp, z2);
        FUNC6(ftmp2, tmp);

        /* ftmp4 = z2^3 */
        FUNC5(tmp, ftmp2, z2);
        FUNC6(ftmp4, tmp);

        /* ftmp4 = z2^3*y1 */
        FUNC5(tmp2, ftmp4, y1);
        FUNC6(ftmp4, tmp2);

        /* ftmp2 = z2^2*x1 */
        FUNC5(tmp2, ftmp2, x1);
        FUNC6(ftmp2, tmp2);
    } else {
        /*
         * We'll assume z2 = 1 (special case z2 = 0 is handled later)
         */

        /* ftmp4 = z2^3*y1 */
        FUNC1(ftmp4, y1);

        /* ftmp2 = z2^2*x1 */
        FUNC1(ftmp2, x1);
    }

    /* ftmp = z1^2 */
    FUNC8(tmp, z1);
    FUNC6(ftmp, tmp);

    /* ftmp3 = z1^3 */
    FUNC5(tmp, ftmp, z1);
    FUNC6(ftmp3, tmp);

    /* tmp = z1^3*y2 */
    FUNC5(tmp, ftmp3, y2);
    /* tmp[i] < 4 * 2^57 * 2^57 = 2^116 */

    /* ftmp3 = z1^3*y2 - z2^3*y1 */
    FUNC3(tmp, ftmp4);
    /* tmp[i] < 2^116 + 2^64 + 8 < 2^117 */
    FUNC6(ftmp3, tmp);

    /* tmp = z1^2*x2 */
    FUNC5(tmp, ftmp, x2);
    /* tmp[i] < 4 * 2^57 * 2^57 = 2^116 */

    /* ftmp = z1^2*x2 - z2^2*x1 */
    FUNC3(tmp, ftmp2);
    /* tmp[i] < 2^116 + 2^64 + 8 < 2^117 */
    FUNC6(ftmp, tmp);

    /*
     * the formulae are incorrect if the points are equal so we check for
     * this and do doubling if this happens
     */
    x_equal = FUNC4(ftmp);
    y_equal = FUNC4(ftmp3);
    z1_is_zero = FUNC4(z1);
    z2_is_zero = FUNC4(z2);
    /* In affine coordinates, (X_1, Y_1) == (X_2, Y_2) */
    if (x_equal && y_equal && !z1_is_zero && !z2_is_zero) {
        FUNC9(x3, y3, z3, x1, y1, z1);
        return;
    }

    /* ftmp5 = z1*z2 */
    if (!mixed) {
        FUNC5(tmp, z1, z2);
        FUNC6(ftmp5, tmp);
    } else {
        /* special case z2 = 0 is handled later */
        FUNC1(ftmp5, z1);
    }

    /* z_out = (z1^2*x2 - z2^2*x1)*(z1*z2) */
    FUNC5(tmp, ftmp, ftmp5);
    FUNC6(z_out, tmp);

    /* ftmp = (z1^2*x2 - z2^2*x1)^2 */
    FUNC1(ftmp5, ftmp);
    FUNC8(tmp, ftmp);
    FUNC6(ftmp, tmp);

    /* ftmp5 = (z1^2*x2 - z2^2*x1)^3 */
    FUNC5(tmp, ftmp, ftmp5);
    FUNC6(ftmp5, tmp);

    /* ftmp2 = z2^2*x1*(z1^2*x2 - z2^2*x1)^2 */
    FUNC5(tmp, ftmp2, ftmp);
    FUNC6(ftmp2, tmp);

    /* tmp = z2^3*y1*(z1^2*x2 - z2^2*x1)^3 */
    FUNC5(tmp, ftmp4, ftmp5);
    /* tmp[i] < 4 * 2^57 * 2^57 = 2^116 */

    /* tmp2 = (z1^3*y2 - z2^3*y1)^2 */
    FUNC8(tmp2, ftmp3);
    /* tmp2[i] < 4 * 2^57 * 2^57 < 2^116 */

    /* tmp2 = (z1^3*y2 - z2^3*y1)^2 - (z1^2*x2 - z2^2*x1)^3 */
    FUNC3(tmp2, ftmp5);
    /* tmp2[i] < 2^116 + 2^64 + 8 < 2^117 */

    /* ftmp5 = 2*z2^2*x1*(z1^2*x2 - z2^2*x1)^2 */
    FUNC1(ftmp5, ftmp2);
    FUNC7(ftmp5, 2);
    /* ftmp5[i] < 2 * 2^57 = 2^58 */

    /*-
     * x_out = (z1^3*y2 - z2^3*y1)^2 - (z1^2*x2 - z2^2*x1)^3 -
     *  2*z2^2*x1*(z1^2*x2 - z2^2*x1)^2
     */
    FUNC3(tmp2, ftmp5);
    /* tmp2[i] < 2^117 + 2^64 + 8 < 2^118 */
    FUNC6(x_out, tmp2);

    /* ftmp2 = z2^2*x1*(z1^2*x2 - z2^2*x1)^2 - x_out */
    FUNC2(ftmp2, x_out);
    /* ftmp2[i] < 2^57 + 2^58 + 2 < 2^59 */

    /*
     * tmp2 = (z1^3*y2 - z2^3*y1)*(z2^2*x1*(z1^2*x2 - z2^2*x1)^2 - x_out)
     */
    FUNC5(tmp2, ftmp3, ftmp2);
    /* tmp2[i] < 4 * 2^57 * 2^59 = 2^118 */

    /*-
     * y_out = (z1^3*y2 - z2^3*y1)*(z2^2*x1*(z1^2*x2 - z2^2*x1)^2 - x_out) -
     *  z2^3*y1*(z1^2*x2 - z2^2*x1)^3
     */
    FUNC10(tmp2, tmp);
    /* tmp2[i] < 2^118 + 2^120 < 2^121 */
    FUNC6(y_out, tmp2);

    /*
     * the result (x_out, y_out, z_out) is incorrect if one of the inputs is
     * the point at infinity, so we need to check for this separately
     */

    /*
     * if point 1 is at infinity, copy point 2 to output, and vice versa
     */
    FUNC0(x_out, x2, z1_is_zero);
    FUNC0(x_out, x1, z2_is_zero);
    FUNC0(y_out, y2, z1_is_zero);
    FUNC0(y_out, y1, z2_is_zero);
    FUNC0(z_out, z2, z1_is_zero);
    FUNC0(z_out, z1, z2_is_zero);
    FUNC1(x3, x_out);
    FUNC1(y3, y_out);
    FUNC1(z3, z_out);
}