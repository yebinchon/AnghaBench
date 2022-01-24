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
struct wps_registrar {int /*<<< orphan*/  wps; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wps_registrar*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wps_registrar_pbc_timeout ; 
 int /*<<< orphan*/  FUNC3 (struct wps_registrar*) ; 

__attribute__((used)) static void FUNC4(struct wps_registrar *reg)
{
	FUNC1(MSG_DEBUG, "WPS: PBC completed - stopping PBC mode");
	FUNC0(wps_registrar_pbc_timeout, reg, NULL);
	FUNC3(reg);
	FUNC2(reg->wps);
}