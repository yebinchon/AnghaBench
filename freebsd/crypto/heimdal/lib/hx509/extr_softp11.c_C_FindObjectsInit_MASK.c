#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int next_object; int num_attributes; TYPE_4__* attributes; } ;
struct session_state {TYPE_1__ find; } ;
struct TYPE_8__ {int /*<<< orphan*/  ulValueLen; int /*<<< orphan*/  type; int /*<<< orphan*/ * pValue; } ;
struct TYPE_7__ {int /*<<< orphan*/  ulValueLen; int /*<<< orphan*/  type; int /*<<< orphan*/  pValue; } ;
typedef  int CK_ULONG ;
typedef  int /*<<< orphan*/  CK_SESSION_HANDLE ;
typedef  int /*<<< orphan*/  CK_RV ;
typedef  TYPE_2__* CK_ATTRIBUTE_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  CKR_DEVICE_MEMORY ; 
 int /*<<< orphan*/  CKR_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct session_state**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_4__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct session_state*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

CK_RV
FUNC9(CK_SESSION_HANDLE hSession,
		  CK_ATTRIBUTE_PTR pTemplate,
		  CK_ULONG ulCount)
{
    struct session_state *state;

    FUNC8("FindObjectsInit\n");

    FUNC0();

    FUNC1(hSession, &state);

    if (state->find.next_object != -1) {
	FUNC2("application didn't do C_FindObjectsFinal\n");
	FUNC4(state);
    }
    if (ulCount) {
	CK_ULONG i;

	FUNC7(pTemplate, ulCount);

	state->find.attributes =
	    FUNC3(1, ulCount * sizeof(state->find.attributes[0]));
	if (state->find.attributes == NULL)
	    return CKR_DEVICE_MEMORY;
	for (i = 0; i < ulCount; i++) {
	    state->find.attributes[i].pValue =
		FUNC5(pTemplate[i].ulValueLen);
	    if (state->find.attributes[i].pValue == NULL) {
		FUNC4(state);
		return CKR_DEVICE_MEMORY;
	    }
	    FUNC6(state->find.attributes[i].pValue,
		   pTemplate[i].pValue, pTemplate[i].ulValueLen);
	    state->find.attributes[i].type = pTemplate[i].type;
	    state->find.attributes[i].ulValueLen = pTemplate[i].ulValueLen;
	}
	state->find.num_attributes = ulCount;
	state->find.next_object = 0;
    } else {
	FUNC8("find all objects\n");
	state->find.attributes = NULL;
	state->find.num_attributes = 0;
	state->find.next_object = 0;
    }

    return CKR_OK;
}