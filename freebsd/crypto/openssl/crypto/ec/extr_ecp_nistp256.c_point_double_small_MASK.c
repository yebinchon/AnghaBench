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
typedef  int /*<<< orphan*/  smallfelem ;
typedef  int /*<<< orphan*/  felem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void
FUNC3(smallfelem x_out, smallfelem y_out, smallfelem z_out,
                   const smallfelem x_in, const smallfelem y_in,
                   const smallfelem z_in)
{
    felem felem_x_out, felem_y_out, felem_z_out;
    felem felem_x_in, felem_y_in, felem_z_in;

    FUNC2(felem_x_in, x_in);
    FUNC2(felem_y_in, y_in);
    FUNC2(felem_z_in, z_in);
    FUNC1(felem_x_out, felem_y_out, felem_z_out,
                 felem_x_in, felem_y_in, felem_z_in);
    FUNC0(x_out, felem_x_out);
    FUNC0(y_out, felem_y_out);
    FUNC0(z_out, felem_z_out);
}