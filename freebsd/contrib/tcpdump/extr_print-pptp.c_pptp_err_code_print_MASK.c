#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {scalar_t__ ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  pptp_errcode_str ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void
FUNC2(netdissect_options *ndo,
                    const uint8_t *err_code)
{
	FUNC0((ndo, " ERR_CODE(%u", *err_code));
	if (ndo->ndo_vflag) {
		FUNC0((ndo, ":%s", FUNC1(pptp_errcode_str, "?", *err_code)));
	}
	FUNC0((ndo, ")"));
}