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
struct eap_aka_data {int /*<<< orphan*/  auts; int /*<<< orphan*/  autn; int /*<<< orphan*/  emsk; int /*<<< orphan*/  msk; int /*<<< orphan*/  k_re; int /*<<< orphan*/  k_encr; int /*<<< orphan*/  k_aut; int /*<<< orphan*/  mk; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_AKA_AUTN_LEN ; 
 int /*<<< orphan*/  EAP_AKA_AUTS_LEN ; 
 int /*<<< orphan*/  EAP_AKA_PRIME_K_AUT_LEN ; 
 int /*<<< orphan*/  EAP_AKA_PRIME_K_RE_LEN ; 
 int /*<<< orphan*/  EAP_EMSK_LEN ; 
 int /*<<< orphan*/  EAP_SIM_KEYING_DATA_LEN ; 
 int /*<<< orphan*/  EAP_SIM_K_ENCR_LEN ; 
 int /*<<< orphan*/  EAP_SIM_MK_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct eap_aka_data *data, int reauth)
{
	if (!reauth) {
		FUNC0(data->mk, 0, EAP_SIM_MK_LEN);
		FUNC0(data->k_aut, 0, EAP_AKA_PRIME_K_AUT_LEN);
		FUNC0(data->k_encr, 0, EAP_SIM_K_ENCR_LEN);
		FUNC0(data->k_re, 0, EAP_AKA_PRIME_K_RE_LEN);
	}
	FUNC0(data->msk, 0, EAP_SIM_KEYING_DATA_LEN);
	FUNC0(data->emsk, 0, EAP_EMSK_LEN);
	FUNC0(data->autn, 0, EAP_AKA_AUTN_LEN);
	FUNC0(data->auts, 0, EAP_AKA_AUTS_LEN);
}