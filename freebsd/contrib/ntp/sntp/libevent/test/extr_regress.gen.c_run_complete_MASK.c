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
struct run {int /*<<< orphan*/  fixed_bytes_set; int /*<<< orphan*/  how_set; } ;

/* Variables and functions */

int
FUNC0(struct run *msg)
{
  if (!msg->how_set)
    return (-1);
  if (!msg->fixed_bytes_set)
    return (-1);
  return (0);
}