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
typedef  int /*<<< orphan*/  u8 ;
struct tncs_data {int /*<<< orphan*/  connectionID; struct tnc_if_imv* imv; } ;
struct tnc_if_imv {unsigned long name; int /*<<< orphan*/  imvID; scalar_t__ (* ReceiveMessage ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,unsigned int) ;struct tnc_if_imv* next; } ;
typedef  scalar_t__ TNC_Result ;
typedef  int /*<<< orphan*/  TNC_BufferReference ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct tnc_if_imv*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct tncs_data *tncs, unsigned int type,
			      const u8 *msg, size_t len)
{
	struct tnc_if_imv *imv;
	TNC_Result res;

	FUNC2(MSG_MSGDUMP, "TNC: Message to IMV(s)", msg, len);

	for (imv = tncs->imv; imv; imv = imv->next) {
		if (imv->ReceiveMessage == NULL ||
		    !FUNC1(imv, type))
			continue;

		FUNC3(MSG_DEBUG, "TNC: Call ReceiveMessage for IMV '%s'",
			   imv->name);
		res = imv->ReceiveMessage(imv->imvID, tncs->connectionID,
					  (TNC_BufferReference) msg, len,
					  type);
		FUNC3(MSG_DEBUG, "TNC: ReceiveMessage: %lu",
			   (unsigned long) res);
	}
}