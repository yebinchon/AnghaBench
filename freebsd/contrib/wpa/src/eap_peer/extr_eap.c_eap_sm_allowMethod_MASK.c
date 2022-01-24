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
struct eap_sm {int dummy; } ;
typedef  int /*<<< orphan*/  EapType ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Boolean FUNC3(struct eap_sm *sm, int vendor,
				  EapType method)
{
	if (!FUNC0(sm, vendor, method)) {
		FUNC2(MSG_DEBUG, "EAP: configuration does not allow: "
			   "vendor %u method %u", vendor, method);
		return FALSE;
	}
	if (FUNC1(vendor, method))
		return TRUE;
	FUNC2(MSG_DEBUG, "EAP: not included in build: "
		   "vendor %u method %u", vendor, method);
	return FALSE;
}