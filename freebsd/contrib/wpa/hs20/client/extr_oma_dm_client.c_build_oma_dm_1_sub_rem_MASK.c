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
struct hs20_osu_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_HS20_SUBSCRIPTION_REMEDIATION ; 
 int /*<<< orphan*/ * FUNC0 (struct hs20_osu_client*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hs20_osu_client*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static xml_node_t * FUNC2(struct hs20_osu_client *ctx,
					   const char *url, int msgid)
{
	xml_node_t *syncml;

	syncml = FUNC0(ctx, url, msgid,
				DM_HS20_SUBSCRIPTION_REMEDIATION);
	if (syncml)
		FUNC1(ctx, "OMA-DM Package 1 (sub rem)", syncml);

	return syncml;
}