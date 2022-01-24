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
struct bm_rcr_entry {int dummy; } ;

/* Variables and functions */
 int BM_RCR_SIZE ; 

__attribute__((used)) static __inline__ uint8_t FUNC0(struct bm_rcr_entry *e)
{
    return (uint8_t)(((uintptr_t)e >> 6) & (BM_RCR_SIZE - 1));
}