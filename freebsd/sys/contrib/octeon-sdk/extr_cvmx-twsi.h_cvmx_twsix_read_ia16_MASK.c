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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 

__attribute__((used)) static inline int64_t FUNC1(int twsi_id, uint8_t dev_addr, uint16_t internal_addr, int num_bytes)
{
    uint64_t data;
    if (num_bytes < 1 || num_bytes > 7)
        return -1;
    if (FUNC0(twsi_id, dev_addr, internal_addr, num_bytes, 2, &data) < 0)
        return -1;
    return data;
}