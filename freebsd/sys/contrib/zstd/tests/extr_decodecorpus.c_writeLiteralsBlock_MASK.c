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
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static size_t FUNC3(U32* seed, frame_t* frame, size_t contentSize)
{
    /* only do compressed for larger segments to avoid compressibility issues */
    if (FUNC0(seed) & 7 && contentSize >= 64) {
        return FUNC1(seed, frame, contentSize);
    } else {
        return FUNC2(seed, frame, contentSize);
    }
}