#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ sec; } ;
struct wps_registrar {TYPE_1__ pbc_ignore_start; int /*<<< orphan*/ * devices; int /*<<< orphan*/ * pbc_sessions; int /*<<< orphan*/  nfc_pw_tokens; int /*<<< orphan*/  pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct wps_registrar *reg)
{
	if (reg == NULL)
		return;
	FUNC3(&reg->pins);
	FUNC1(&reg->nfc_pw_tokens, 0);
	FUNC2(reg->pbc_sessions);
	reg->pbc_sessions = NULL;
	FUNC0(reg->devices);
	reg->devices = NULL;
#ifdef WPS_WORKAROUNDS
	reg->pbc_ignore_start.sec = 0;
#endif /* WPS_WORKAROUNDS */
}