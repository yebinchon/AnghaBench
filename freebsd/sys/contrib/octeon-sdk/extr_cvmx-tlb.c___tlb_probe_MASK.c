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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_EHB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CVMX_TLBP ; 

__attribute__((used)) static inline int FUNC2(uint64_t hi){
    int index;
    CVMX_EHB;
    FUNC1(hi);
    CVMX_TLBP;
    CVMX_EHB;

    FUNC0(index);

    if (index < 0) index = -1;

    return index;
}