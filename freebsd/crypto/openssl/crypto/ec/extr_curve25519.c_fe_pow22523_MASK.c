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
typedef  int /*<<< orphan*/  const fe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC2(fe out, const fe z)
{
    fe t0;
    fe t1;
    fe t2;
    int i;

    FUNC1(t0, z);
    FUNC1(t1, t0);
    for (i = 1; i < 2; ++i) {
        FUNC1(t1, t1);
    }
    FUNC0(t1, z, t1);
    FUNC0(t0, t0, t1);
    FUNC1(t0, t0);
    FUNC0(t0, t1, t0);
    FUNC1(t1, t0);
    for (i = 1; i < 5; ++i) {
        FUNC1(t1, t1);
    }
    FUNC0(t0, t1, t0);
    FUNC1(t1, t0);
    for (i = 1; i < 10; ++i) {
        FUNC1(t1, t1);
    }
    FUNC0(t1, t1, t0);
    FUNC1(t2, t1);
    for (i = 1; i < 20; ++i) {
        FUNC1(t2, t2);
    }
    FUNC0(t1, t2, t1);
    FUNC1(t1, t1);
    for (i = 1; i < 10; ++i) {
        FUNC1(t1, t1);
    }
    FUNC0(t0, t1, t0);
    FUNC1(t1, t0);
    for (i = 1; i < 50; ++i) {
        FUNC1(t1, t1);
    }
    FUNC0(t1, t1, t0);
    FUNC1(t2, t1);
    for (i = 1; i < 100; ++i) {
        FUNC1(t2, t2);
    }
    FUNC0(t1, t2, t1);
    FUNC1(t1, t1);
    for (i = 1; i < 50; ++i) {
        FUNC1(t1, t1);
    }
    FUNC0(t0, t1, t0);
    FUNC1(t0, t0);
    for (i = 1; i < 2; ++i) {
        FUNC1(t0, t0);
    }
    FUNC0(out, t0, z);
}