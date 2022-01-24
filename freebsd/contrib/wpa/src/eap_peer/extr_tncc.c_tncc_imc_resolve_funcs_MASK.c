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
struct tnc_if_imc {void* Terminate; void* BatchEnding; void* ReceiveMessage; void* NotifyConnectionChange; int /*<<< orphan*/ * ProvideBindFunction; int /*<<< orphan*/ * BeginHandshake; int /*<<< orphan*/ * Initialize; void* dlhandle; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 void* FUNC0 (void*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct tnc_if_imc *imc)
{
	void *handle = imc->dlhandle;

	/* Mandatory IMC functions */
	imc->Initialize = FUNC0(handle, "TNC_IMC_Initialize");
	if (imc->Initialize == NULL) {
		FUNC1(MSG_ERROR, "TNC: IMC does not export "
			   "TNC_IMC_Initialize");
		return -1;
	}

	imc->BeginHandshake = FUNC0(handle, "TNC_IMC_BeginHandshake");
	if (imc->BeginHandshake == NULL) {
		FUNC1(MSG_ERROR, "TNC: IMC does not export "
			   "TNC_IMC_BeginHandshake");
		return -1;
	}

	imc->ProvideBindFunction =
		FUNC0(handle, "TNC_IMC_ProvideBindFunction");
	if (imc->ProvideBindFunction == NULL) {
		FUNC1(MSG_ERROR, "TNC: IMC does not export "
			   "TNC_IMC_ProvideBindFunction");
		return -1;
	}

	/* Optional IMC functions */
	imc->NotifyConnectionChange =
		FUNC0(handle, "TNC_IMC_NotifyConnectionChange");
	imc->ReceiveMessage = FUNC0(handle, "TNC_IMC_ReceiveMessage");
	imc->BatchEnding = FUNC0(handle, "TNC_IMC_BatchEnding");
	imc->Terminate = FUNC0(handle, "TNC_IMC_Terminate");

	return 0;
}