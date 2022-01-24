#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/ * close; int /*<<< orphan*/  uniform; } ;
typedef  TYPE_1__ randombytes_implementation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ randombytes_nativeclient_implementation ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__ randombytes_sysrandom_implementation ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  randombytes_uniform_impl ; 

__attribute__((used)) static int
FUNC5(void)
{
#ifndef __native_client__
    randombytes_implementation impl = randombytes_sysrandom_implementation;
#else
    randombytes_implementation impl = randombytes_nativeclient_implementation;
#endif
    uint32_t                   v = FUNC2();

    impl.uniform = randombytes_uniform_impl;
    FUNC1();
    FUNC3(&impl);
    FUNC0(FUNC4(1) == 1);
    FUNC0(FUNC4(v) == v);
    FUNC0(FUNC4(v) == v);
    FUNC0(FUNC4(v) == v);
    FUNC0(FUNC4(v) == v);
    FUNC1();
    impl.close = NULL;
    FUNC1();

    return 0;
}