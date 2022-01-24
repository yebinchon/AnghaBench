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
typedef  int /*<<< orphan*/  volatile uint8_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  scalar_t__ bus_space_handle_t ;
typedef  scalar_t__ bus_size_t ;

/* Variables and functions */

uint8_t
FUNC0(bus_space_tag_t t, bus_space_handle_t h, bus_size_t offset)
{
	return (*((volatile uint8_t *)(h + offset)));
}