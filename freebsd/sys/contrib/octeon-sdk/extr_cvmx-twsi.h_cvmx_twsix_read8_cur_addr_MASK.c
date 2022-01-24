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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static inline int FUNC1(int twsi_id, uint8_t dev_addr)
{
    uint64_t data;

    if (FUNC0(twsi_id,dev_addr, 1, &data) < 0)
        return -1;
    return(data & 0xff);
}