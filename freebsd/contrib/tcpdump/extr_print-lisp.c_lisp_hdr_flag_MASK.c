#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/  ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;
struct TYPE_8__ {int /*<<< orphan*/  type_and_flag; } ;
typedef  TYPE_2__ lisp_map_register_hdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*) ; 
 scalar_t__ LISP_MAP_NOTIFY ; 
 scalar_t__ LISP_MAP_REGISTER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lisp_type ; 
 int /*<<< orphan*/  map_notify_hdr_flag ; 
 int /*<<< orphan*/  map_register_hdr_flag ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(netdissect_options *ndo, const lisp_map_register_hdr *lisp_hdr)
{
	uint8_t type = FUNC3(lisp_hdr->type_and_flag);

	if (!ndo->ndo_vflag) {
		FUNC1((ndo, "%s,", FUNC4(lisp_type, "unknown-type-%u", type)));
		return;
	} else {
		FUNC1((ndo, "%s,", FUNC4(lisp_type, "unknown-type-%u", type)));
	}

	if (type == LISP_MAP_REGISTER) {
		FUNC1((ndo, " flags [%s],", FUNC2(map_register_hdr_flag,
			 "none", FUNC0(lisp_hdr))));
	} else if (type == LISP_MAP_NOTIFY) {
		FUNC1((ndo, " flags [%s],", FUNC2(map_notify_hdr_flag,
			 "none", FUNC0(lisp_hdr))));
	}

	return;
}