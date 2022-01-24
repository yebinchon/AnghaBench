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

__attribute__((used)) static int FUNC0(uint32_t buffer_size, uint32_t wr_idx, uint32_t rd_idx)
{
    if (rd_idx >= buffer_size || wr_idx >= buffer_size)
        return -1;

    return (((buffer_size -1) - (wr_idx - rd_idx))%buffer_size);
}