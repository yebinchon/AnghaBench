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
typedef  int U32 ;

/* Variables and functions */
 size_t FUNC0 (int*,int const) ; 
 int FUNC1 (int*) ; 

__attribute__((used)) static size_t FUNC2(U32* seed, U32 maxLog)
{
    U32 const logLength = FUNC1(seed) % maxLog;
    return FUNC0(seed, logLength);
}