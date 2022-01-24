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
struct eap_sm {int /*<<< orphan*/  msg_ctx; } ;
struct eap_gpsk_data {int vendor; int specifier; int forced_cipher; } ;
struct eap_gpsk_csuite {int /*<<< orphan*/  specifier; int /*<<< orphan*/  vendor; } ;

/* Variables and functions */
 int EAP_GPSK_CIPHER_RESERVED ; 
 int EAP_GPSK_VENDOR_IETF ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int,...) ; 

__attribute__((used)) static int FUNC5(struct eap_sm *sm,
				  struct eap_gpsk_data *data,
				  const u8 *csuite_list,
				  size_t csuite_list_len)
{
	struct eap_gpsk_csuite *csuite;
	int i, count;

	count = csuite_list_len / sizeof(struct eap_gpsk_csuite);
	data->vendor = EAP_GPSK_VENDOR_IETF;
	data->specifier = EAP_GPSK_CIPHER_RESERVED;
	csuite = (struct eap_gpsk_csuite *) csuite_list;
	for (i = 0; i < count; i++) {
		int vendor, specifier;
		vendor = FUNC1(csuite->vendor);
		specifier = FUNC0(csuite->specifier);
		FUNC4(MSG_DEBUG, "EAP-GPSK: CSuite[%d]: %d:%d",
			   i, vendor, specifier);
		if (data->vendor == EAP_GPSK_VENDOR_IETF &&
		    data->specifier == EAP_GPSK_CIPHER_RESERVED &&
		    FUNC2(vendor, specifier) &&
		    (!data->forced_cipher || data->forced_cipher == specifier))
		{
			data->vendor = vendor;
			data->specifier = specifier;
		}
		csuite++;
	}
	if (data->vendor == EAP_GPSK_VENDOR_IETF &&
	    data->specifier == EAP_GPSK_CIPHER_RESERVED) {
		FUNC3(sm->msg_ctx, MSG_INFO, "EAP-GPSK: No supported "
			"ciphersuite found");
		return -1;
	}
	FUNC4(MSG_DEBUG, "EAP-GPSK: Selected ciphersuite %d:%d",
		   data->vendor, data->specifier);

	return 0;
}