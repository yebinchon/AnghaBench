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
typedef  int /*<<< orphan*/  felem_bytearray ;
typedef  int /*<<< orphan*/  felem ;
typedef  int /*<<< orphan*/  b_out ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 

__attribute__((used)) static BIGNUM *FUNC2(BIGNUM *out, const felem in)
{
    felem_bytearray b_out;
    FUNC1(b_out, in);
    return FUNC0(b_out, sizeof(b_out), out);
}