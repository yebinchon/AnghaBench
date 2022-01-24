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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,double volatile) ; 
 int /*<<< orphan*/  FUNC1 (double volatile,int) ; 

__attribute__((used)) static __inline void
FUNC2(volatile double *_dp)
{
	uint32_t _lw;

	FUNC0(_lw, *_dp);
	FUNC1(*_dp, _lw & 0xf8000000);
}