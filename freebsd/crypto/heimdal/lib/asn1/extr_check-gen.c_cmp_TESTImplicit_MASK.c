#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  foo; } ;
typedef  int /*<<< orphan*/  TESTImplicit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ti1 ; 
 TYPE_1__ ti2 ; 
 int /*<<< orphan*/  ti3 ; 

__attribute__((used)) static int
FUNC1 (void *a, void *b)
{
    TESTImplicit *aa = a;
    TESTImplicit *ab = b;

    FUNC0(aa,ab,ti1);
    FUNC0(aa,ab,ti2.foo);
    FUNC0(aa,ab,ti3);
    return 0;
}