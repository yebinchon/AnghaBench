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
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  ENGINE_FLAGS_NO_REGISTER_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  engine_e_rdrand_id ; 
 int /*<<< orphan*/  engine_e_rdrand_name ; 
 int /*<<< orphan*/  rdrand_init ; 
 int /*<<< orphan*/  rdrand_meth ; 

__attribute__((used)) static int FUNC5(ENGINE *e)
{
    if (!FUNC2(e, engine_e_rdrand_id) ||
        !FUNC4(e, engine_e_rdrand_name) ||
        !FUNC1(e, ENGINE_FLAGS_NO_REGISTER_ALL) ||
        !FUNC3(e, rdrand_init) ||
        !FUNC0(e, &rdrand_meth))
        return 0;

    return 1;
}