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
struct TYPE_3__ {int /*<<< orphan*/  T2d; int /*<<< orphan*/  Z; int /*<<< orphan*/  YminusX; int /*<<< orphan*/  YplusX; } ;
typedef  TYPE_1__ ge25519_cached ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(ge25519_cached *h)
{
    FUNC1(h->YplusX);
    FUNC1(h->YminusX);
    FUNC1(h->Z);
    FUNC0(h->T2d);
}