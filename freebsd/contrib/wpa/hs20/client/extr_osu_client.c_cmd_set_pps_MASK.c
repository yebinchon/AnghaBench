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
typedef  int /*<<< orphan*/  xml_node_t ;
struct hs20_osu_client {int /*<<< orphan*/  xml; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct hs20_osu_client*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct hs20_osu_client *ctx, const char *pps_fname)
{
	xml_node_t *pps;
	const char *fqdn;
	char *fqdn_buf = NULL, *pos;

	pps = FUNC0(ctx->xml, pps_fname);
	if (pps == NULL) {
		FUNC6(MSG_INFO, "Could not read or parse '%s'", pps_fname);
		return;
	}

	fqdn = FUNC4(pps_fname, "SP/");
	if (fqdn) {
		fqdn_buf = FUNC3(fqdn + 3);
		if (fqdn_buf == NULL)
			return;
		pos = FUNC2(fqdn_buf, '/');
		if (pos)
			*pos = '\0';
		fqdn = fqdn_buf;
	} else
		fqdn = "wi-fi.org";

	FUNC6(MSG_INFO, "Set PPS MO info to wpa_supplicant - SP FQDN %s",
		   fqdn);
	FUNC5(ctx, pps, fqdn);

	FUNC1(fqdn_buf);
	FUNC7(ctx->xml, pps);
}