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
typedef  enum wpa_ctrl_req_type { ____Placeholder_wpa_ctrl_req_type } wpa_ctrl_req_type ;

/* Variables and functions */
 int WPA_CTRL_REQ_EAP_IDENTITY ; 
 int WPA_CTRL_REQ_EAP_NEW_PASSWORD ; 
 int WPA_CTRL_REQ_EAP_OTP ; 
 int WPA_CTRL_REQ_EAP_PASSPHRASE ; 
 int WPA_CTRL_REQ_EAP_PASSWORD ; 
 int WPA_CTRL_REQ_EAP_PIN ; 
 int WPA_CTRL_REQ_EXT_CERT_CHECK ; 
 int WPA_CTRL_REQ_PSK_PASSPHRASE ; 
 int WPA_CTRL_REQ_SIM ; 
 int WPA_CTRL_REQ_UNKNOWN ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

enum wpa_ctrl_req_type FUNC1(const char *field)
{
	if (FUNC0(field, "IDENTITY") == 0)
		return WPA_CTRL_REQ_EAP_IDENTITY;
	else if (FUNC0(field, "PASSWORD") == 0)
		return WPA_CTRL_REQ_EAP_PASSWORD;
	else if (FUNC0(field, "NEW_PASSWORD") == 0)
		return WPA_CTRL_REQ_EAP_NEW_PASSWORD;
	else if (FUNC0(field, "PIN") == 0)
		return WPA_CTRL_REQ_EAP_PIN;
	else if (FUNC0(field, "OTP") == 0)
		return WPA_CTRL_REQ_EAP_OTP;
	else if (FUNC0(field, "PASSPHRASE") == 0)
		return WPA_CTRL_REQ_EAP_PASSPHRASE;
	else if (FUNC0(field, "SIM") == 0)
		return WPA_CTRL_REQ_SIM;
	else if (FUNC0(field, "PSK_PASSPHRASE") == 0)
		return WPA_CTRL_REQ_PSK_PASSPHRASE;
	else if (FUNC0(field, "EXT_CERT_CHECK") == 0)
		return WPA_CTRL_REQ_EXT_CERT_CHECK;
	return WPA_CTRL_REQ_UNKNOWN;
}