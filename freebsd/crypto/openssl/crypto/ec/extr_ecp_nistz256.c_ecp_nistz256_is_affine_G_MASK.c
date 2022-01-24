#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  TYPE_1__ EC_POINT ;

/* Variables and functions */
 scalar_t__ P256_LIMBS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  def_xG ; 
 int /*<<< orphan*/  def_yG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const EC_POINT *generator)
{
    return (FUNC0(generator->X) == P256_LIMBS) &&
        (FUNC0(generator->Y) == P256_LIMBS) &&
        FUNC2(FUNC1(generator->X), def_xG) &&
        FUNC2(FUNC1(generator->Y), def_yG) &&
        FUNC3(generator->Z);
}