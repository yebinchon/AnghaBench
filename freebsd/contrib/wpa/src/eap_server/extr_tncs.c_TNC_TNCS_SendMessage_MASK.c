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
struct tncs_data {TYPE_1__* imv_data; } ;
struct TYPE_2__ {unsigned char* imv_send; scalar_t__ imv_send_len; } ;
typedef  int /*<<< orphan*/  TNC_UInt32 ;
typedef  int /*<<< orphan*/  TNC_Result ;
typedef  scalar_t__ TNC_MessageType ;
typedef  size_t TNC_IMVID ;
typedef  int /*<<< orphan*/  TNC_ConnectionID ;
typedef  int /*<<< orphan*/  TNC_BufferReference ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TNC_RESULT_FATAL ; 
 int /*<<< orphan*/  TNC_RESULT_INVALID_PARAMETER ; 
 int /*<<< orphan*/  TNC_RESULT_OTHER ; 
 int /*<<< orphan*/  TNC_RESULT_SUCCESS ; 
 unsigned char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (char*,size_t,char*,unsigned int,unsigned char*) ; 
 unsigned char* FUNC3 (size_t) ; 
 struct tncs_data* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static TNC_Result FUNC8(
	TNC_IMVID imvID,
	TNC_ConnectionID connectionID,
	TNC_BufferReference message,
	TNC_UInt32 messageLength,
	TNC_MessageType messageType)
{
	struct tncs_data *tncs;
	unsigned char *b64;
	size_t b64len;

	FUNC7(MSG_DEBUG, "TNC: TNC_TNCS_SendMessage(imvID=%lu "
		   "connectionID=%lu messageType=%lu)",
		   imvID, connectionID, messageType);
	FUNC6(MSG_DEBUG, "TNC: TNC_TNCS_SendMessage",
			  message, messageLength);

	if (FUNC5(imvID) == NULL)
		return TNC_RESULT_INVALID_PARAMETER;

	tncs = FUNC4(connectionID);
	if (tncs == NULL)
		return TNC_RESULT_INVALID_PARAMETER;

	b64 = FUNC0(message, messageLength, &b64len);
	if (b64 == NULL)
		return TNC_RESULT_FATAL;

	FUNC1(tncs->imv_data[imvID].imv_send);
	tncs->imv_data[imvID].imv_send_len = 0;
	tncs->imv_data[imvID].imv_send = FUNC3(b64len + 100);
	if (tncs->imv_data[imvID].imv_send == NULL) {
		FUNC1(b64);
		return TNC_RESULT_OTHER;
	}

	tncs->imv_data[imvID].imv_send_len =
		FUNC2((char *) tncs->imv_data[imvID].imv_send,
			    b64len + 100,
			    "<IMC-IMV-Message><Type>%08X</Type>"
			    "<Base64>%s</Base64></IMC-IMV-Message>",
			    (unsigned int) messageType, b64);

	FUNC1(b64);

	return TNC_RESULT_SUCCESS;
}