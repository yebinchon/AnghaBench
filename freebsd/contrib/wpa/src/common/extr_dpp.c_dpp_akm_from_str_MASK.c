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
typedef  enum dpp_akm { ____Placeholder_dpp_akm } dpp_akm ;

/* Variables and functions */
 int DPP_AKM_DPP ; 
 int DPP_AKM_PSK ; 
 int DPP_AKM_PSK_SAE ; 
 int DPP_AKM_PSK_SAE_DPP ; 
 int DPP_AKM_SAE ; 
 int DPP_AKM_SAE_DPP ; 
 int DPP_AKM_UNKNOWN ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static enum dpp_akm FUNC1(const char *akm)
{
	if (FUNC0(akm, "psk") == 0)
		return DPP_AKM_PSK;
	if (FUNC0(akm, "sae") == 0)
		return DPP_AKM_SAE;
	if (FUNC0(akm, "psk+sae") == 0)
		return DPP_AKM_PSK_SAE;
	if (FUNC0(akm, "dpp") == 0)
		return DPP_AKM_DPP;
	if (FUNC0(akm, "dpp+sae") == 0)
		return DPP_AKM_SAE_DPP;
	if (FUNC0(akm, "dpp+psk+sae") == 0)
		return DPP_AKM_PSK_SAE_DPP;
	return DPP_AKM_UNKNOWN;
}