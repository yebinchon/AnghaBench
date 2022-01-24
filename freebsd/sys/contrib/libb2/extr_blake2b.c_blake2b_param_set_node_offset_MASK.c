#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  node_offset; } ;
typedef  TYPE_1__ blake2b_param ;

/* Variables and functions */

__attribute__((used)) static inline int FUNC0( blake2b_param *P, const uint64_t node_offset )
{
  P->node_offset = node_offset;
  return 0;
}