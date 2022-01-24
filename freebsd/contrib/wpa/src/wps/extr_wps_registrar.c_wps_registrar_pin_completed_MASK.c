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
struct wps_registrar {scalar_t__ selected_registrar; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wps_registrar*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wps_registrar*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wps_registrar_set_selected_timeout ; 

__attribute__((used)) static void FUNC3(struct wps_registrar *reg)
{
	FUNC1(MSG_DEBUG, "WPS: PIN completed using internal Registrar");
	FUNC0(wps_registrar_set_selected_timeout, reg, NULL);
	reg->selected_registrar = 0;
	FUNC2(reg, 0);
}