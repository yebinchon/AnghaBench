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
struct wps_uuid_pin {int /*<<< orphan*/  pin_len; int /*<<< orphan*/  pin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wps_uuid_pin*) ; 

__attribute__((used)) static void FUNC2(struct wps_uuid_pin *pin)
{
	FUNC0(pin->pin, pin->pin_len);
	FUNC1(pin);
}