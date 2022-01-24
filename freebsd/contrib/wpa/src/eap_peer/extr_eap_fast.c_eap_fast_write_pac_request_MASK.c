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
typedef  int u16 ;
struct eap_tlv_request_action_tlv {void* action; void* length; void* tlv_type; } ;
struct eap_tlv_pac_type_tlv {void* pac_type; void* length; void* tlv_type; } ;
struct eap_tlv_hdr {void* length; void* tlv_type; } ;

/* Variables and functions */
 int EAP_TLV_ACTION_PROCESS_TLV ; 
 int EAP_TLV_PAC_TLV ; 
 int EAP_TLV_REQUEST_ACTION_TLV ; 
 int PAC_TYPE_PAC_TYPE ; 
 void* FUNC0 (int) ; 

__attribute__((used)) static u8 * FUNC1(u8 *pos, u16 pac_type)
{
	struct eap_tlv_hdr *pac;
	struct eap_tlv_request_action_tlv *act;
	struct eap_tlv_pac_type_tlv *type;

	act = (struct eap_tlv_request_action_tlv *) pos;
	act->tlv_type = FUNC0(EAP_TLV_REQUEST_ACTION_TLV);
	act->length = FUNC0(2);
	act->action = FUNC0(EAP_TLV_ACTION_PROCESS_TLV);

	pac = (struct eap_tlv_hdr *) (act + 1);
	pac->tlv_type = FUNC0(EAP_TLV_PAC_TLV);
	pac->length = FUNC0(sizeof(*type));

	type = (struct eap_tlv_pac_type_tlv *) (pac + 1);
	type->tlv_type = FUNC0(PAC_TYPE_PAC_TYPE);
	type->length = FUNC0(2);
	type->pac_type = FUNC0(pac_type);

	return (u8 *) (type + 1);
}