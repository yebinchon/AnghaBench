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
struct eap_sim_msg {int /*<<< orphan*/ * buf; } ;
struct eap_hdr {int code; int identifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_SIM_INIT_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sim_msg*) ; 
 struct eap_sim_msg* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 

struct eap_sim_msg * FUNC4(int code, int id, int type, int subtype)
{
	struct eap_sim_msg *msg;
	struct eap_hdr *eap;
	u8 *pos;

	msg = FUNC1(sizeof(*msg));
	if (msg == NULL)
		return NULL;

	msg->buf = FUNC2(EAP_SIM_INIT_LEN);
	if (msg->buf == NULL) {
		FUNC0(msg);
		return NULL;
	}
	eap = FUNC3(msg->buf, sizeof(*eap));
	eap->code = code;
	eap->identifier = id;

	pos = FUNC3(msg->buf, 4);
	*pos++ = type;
	*pos++ = subtype;
	*pos++ = 0; /* Reserved */
	*pos++ = 0; /* Reserved */

	return msg;
}