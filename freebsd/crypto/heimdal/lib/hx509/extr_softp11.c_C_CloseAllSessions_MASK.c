#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ session_handle; } ;
struct TYPE_3__ {TYPE_2__* state; } ;
typedef  int /*<<< orphan*/  CK_SLOT_ID ;
typedef  int /*<<< orphan*/  CK_RV ;

/* Variables and functions */
 int /*<<< orphan*/  CKR_OK ; 
 scalar_t__ CK_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 size_t MAX_NUM_SESSION ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_1__ soft_token ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

CK_RV
FUNC3(CK_SLOT_ID slotID)
{
    size_t i;
    FUNC0();

    FUNC2("CloseAllSessions\n");

    for (i = 0; i < MAX_NUM_SESSION; i++)
	if (soft_token.state[i].session_handle != CK_INVALID_HANDLE)
	    FUNC1(&soft_token.state[i]);

    return CKR_OK;
}