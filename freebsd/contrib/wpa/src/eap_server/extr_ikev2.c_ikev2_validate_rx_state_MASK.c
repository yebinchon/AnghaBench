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
typedef  int u8 ;
typedef  int u32 ;
struct ikev2_initiator_data {int state; } ;

/* Variables and functions */
#define  CHILD_SA 131 
 int CREATE_CHILD_SA ; 
#define  IKEV2_DONE 130 
 int IKE_SA_AUTH ; 
 int IKE_SA_INIT ; 
 int /*<<< orphan*/  MSG_INFO ; 
#define  SA_AUTH 129 
#define  SA_INIT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC1(struct ikev2_initiator_data *data,
				   u8 exchange_type, u32 message_id)
{
	switch (data->state) {
	case SA_INIT:
		/* Expect to receive IKE_SA_INIT: HDR, SAr, KEr, Nr, [CERTREQ],
		 * [SK{IDr}] */
		if (exchange_type != IKE_SA_INIT) {
			FUNC0(MSG_INFO, "IKEV2: Unexpected Exchange Type "
				   "%u in SA_INIT state", exchange_type);
			return -1;
		}
		if (message_id != 0) {
			FUNC0(MSG_INFO, "IKEV2: Unexpected Message ID %u "
				   "in SA_INIT state", message_id);
			return -1;
		}
		break;
	case SA_AUTH:
		/* Expect to receive IKE_SA_AUTH:
		 * HDR, SK {IDr, [CERT,] [CERTREQ,] [NFID,] AUTH}
		 */
		if (exchange_type != IKE_SA_AUTH) {
			FUNC0(MSG_INFO, "IKEV2: Unexpected Exchange Type "
				   "%u in SA_AUTH state", exchange_type);
			return -1;
		}
		if (message_id != 1) {
			FUNC0(MSG_INFO, "IKEV2: Unexpected Message ID %u "
				   "in SA_AUTH state", message_id);
			return -1;
		}
		break;
	case CHILD_SA:
		if (exchange_type != CREATE_CHILD_SA) {
			FUNC0(MSG_INFO, "IKEV2: Unexpected Exchange Type "
				   "%u in CHILD_SA state", exchange_type);
			return -1;
		}
		if (message_id != 2) {
			FUNC0(MSG_INFO, "IKEV2: Unexpected Message ID %u "
				   "in CHILD_SA state", message_id);
			return -1;
		}
		break;
	case IKEV2_DONE:
		return -1;
	}

	return 0;
}