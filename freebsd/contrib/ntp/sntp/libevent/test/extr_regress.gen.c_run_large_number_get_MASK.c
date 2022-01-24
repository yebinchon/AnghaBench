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
struct run {int large_number_set; int /*<<< orphan*/  large_number_data; } ;
typedef  int /*<<< orphan*/  ev_uint64_t ;

/* Variables and functions */

int
FUNC0(struct run *msg, ev_uint64_t *value)
{
  if (msg->large_number_set != 1)
    return (-1);
  *value = msg->large_number_data;
  return (0);
}