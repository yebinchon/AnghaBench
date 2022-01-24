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
struct gctl_req {int dummy; } ;
struct g_eli_metadata {unsigned char* md_mkeys; int md_keys; } ;
typedef  int /*<<< orphan*/  md ;
typedef  int intmax_t ;

/* Variables and functions */
 unsigned int G_ELI_MAXMKEYS ; 
 unsigned int G_ELI_MKEYLEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned int) ; 
 int FUNC1 (struct gctl_req*,char const*,struct g_eli_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,char const*,struct g_eli_metadata*) ; 
 int /*<<< orphan*/  FUNC3 (struct g_eli_metadata*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*,...) ; 
 int FUNC5 (struct gctl_req*,char*) ; 
 int FUNC6 (struct gctl_req*,char*) ; 

__attribute__((used)) static void
FUNC7(struct gctl_req *req, const char *prov)
{
	struct g_eli_metadata md;
	unsigned char *mkeydst;
	unsigned int nkey;
	intmax_t val;
	bool all, force;

	if (FUNC1(req, prov, &md) == -1)
		return;

	all = FUNC5(req, "all");
	if (all)
		FUNC0(md.md_mkeys, sizeof(md.md_mkeys));
	else {
		force = FUNC5(req, "force");
		val = FUNC6(req, "keyno");
		if (val == -1) {
			FUNC4(req, "Key number has to be specified.");
			return;
		}
		nkey = val;
		if (nkey >= G_ELI_MAXMKEYS) {
			FUNC4(req, "Invalid '%s' argument.", "keyno");
			return;
		}
		if (!(md.md_keys & (1 << nkey)) && !force) {
			FUNC4(req, "Master Key %u is not set.", nkey);
			return;
		}
		md.md_keys &= ~(1 << nkey);
		if (md.md_keys == 0 && !force) {
			FUNC4(req, "This is the last Master Key. Use '-f' "
			    "option if you really want to remove it.");
			return;
		}
		mkeydst = md.md_mkeys + nkey * G_ELI_MKEYLEN;
		FUNC0(mkeydst, G_ELI_MKEYLEN);
	}

	FUNC2(req, prov, &md);
	FUNC3(&md, sizeof(md));
}