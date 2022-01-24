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
struct eap_sim_msg {int dummy; } ;
struct eap_aka_data {scalar_t__ eap_method; int /*<<< orphan*/ * id_msgs; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_AKA_CHECKCODE_LEN ; 
 int /*<<< orphan*/  EAP_AKA_PRIME_CHECKCODE_LEN ; 
 int /*<<< orphan*/  EAP_SIM_AT_CHECKCODE ; 
 scalar_t__ EAP_TYPE_AKA_PRIME ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int SHA256_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct eap_aka_data *data,
				  struct eap_sim_msg *msg)
{
	const u8 *addr;
	size_t len;
	u8 hash[SHA256_MAC_LEN];

	FUNC4(MSG_DEBUG, "   AT_CHECKCODE");

	if (data->id_msgs == NULL) {
		/*
		 * No EAP-AKA/Identity packets were exchanged - send empty
		 * checkcode.
		 */
		FUNC0(msg, EAP_SIM_AT_CHECKCODE, 0, NULL, 0);
		return;
	}

	/* Checkcode is SHA1 hash over all EAP-AKA/Identity packets. */
	addr = FUNC5(data->id_msgs);
	len = FUNC6(data->id_msgs);
	FUNC3(MSG_MSGDUMP, "EAP-AKA: AT_CHECKCODE data", addr, len);
	if (data->eap_method == EAP_TYPE_AKA_PRIME)
		FUNC2(1, &addr, &len, hash);
	else
		FUNC1(1, &addr, &len, hash);

	FUNC0(msg, EAP_SIM_AT_CHECKCODE, 0, hash,
			data->eap_method == EAP_TYPE_AKA_PRIME ?
			EAP_AKA_PRIME_CHECKCODE_LEN : EAP_AKA_CHECKCODE_LEN);
}