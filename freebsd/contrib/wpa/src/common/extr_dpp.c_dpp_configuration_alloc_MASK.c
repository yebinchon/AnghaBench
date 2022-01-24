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
struct dpp_configuration {int /*<<< orphan*/  akm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPP_AKM_DPP ; 
 int /*<<< orphan*/  DPP_AKM_PSK ; 
 int /*<<< orphan*/  DPP_AKM_PSK_SAE ; 
 int /*<<< orphan*/  DPP_AKM_PSK_SAE_DPP ; 
 int /*<<< orphan*/  DPP_AKM_SAE ; 
 int /*<<< orphan*/  DPP_AKM_SAE_DPP ; 
 scalar_t__ FUNC0 (char const*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dpp_configuration*) ; 
 char* FUNC2 (char const*,char) ; 
 size_t FUNC3 (char const*) ; 
 struct dpp_configuration* FUNC4 (int) ; 

struct dpp_configuration * FUNC5(const char *type)
{
	struct dpp_configuration *conf;
	const char *end;
	size_t len;

	conf = FUNC4(sizeof(*conf));
	if (!conf)
		goto fail;

	end = FUNC2(type, ' ');
	if (end)
		len = end - type;
	else
		len = FUNC3(type);

	if (FUNC0(type, len, "psk"))
		conf->akm = DPP_AKM_PSK;
	else if (FUNC0(type, len, "sae"))
		conf->akm = DPP_AKM_SAE;
	else if (FUNC0(type, len, "psk-sae") ||
		 FUNC0(type, len, "psk+sae"))
		conf->akm = DPP_AKM_PSK_SAE;
	else if (FUNC0(type, len, "sae-dpp") ||
		 FUNC0(type, len, "dpp+sae"))
		conf->akm = DPP_AKM_SAE_DPP;
	else if (FUNC0(type, len, "psk-sae-dpp") ||
		 FUNC0(type, len, "dpp+psk+sae"))
		conf->akm = DPP_AKM_PSK_SAE_DPP;
	else if (FUNC0(type, len, "dpp"))
		conf->akm = DPP_AKM_DPP;
	else
		goto fail;

	return conf;
fail:
	FUNC1(conf);
	return NULL;
}