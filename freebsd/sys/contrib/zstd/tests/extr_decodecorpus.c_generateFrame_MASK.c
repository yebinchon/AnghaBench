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
typedef  int /*<<< orphan*/  frame_t ;
typedef  int /*<<< orphan*/  dictInfo ;
typedef  scalar_t__ U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static U32 FUNC5(U32 seed, frame_t* fr, dictInfo info)
{
    /* generate a complete frame */
    FUNC0(3, "frame seed: %u\n", (unsigned)seed);
    FUNC1(fr);

    FUNC4(&seed, fr, info);
    FUNC2(&seed, fr, info);
    FUNC3(fr);

    return seed;
}