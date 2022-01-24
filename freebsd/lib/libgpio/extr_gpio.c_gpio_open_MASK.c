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
typedef  int /*<<< orphan*/  gpio_handle_t ;
typedef  int /*<<< orphan*/  device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned int) ; 

gpio_handle_t
FUNC2(unsigned int unit)
{
	char device[16];

	FUNC1(device, sizeof(device), "/dev/gpioc%u", unit);

	return (FUNC0(device));
}