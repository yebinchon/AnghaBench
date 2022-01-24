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
typedef  int /*<<< orphan*/  uint8_t ;
struct sldns_file_parse_state {int default_ttl; int origin_len; int /*<<< orphan*/  origin; } ;
struct config_file {scalar_t__* chrootdir; } ;
struct auth_zone {scalar_t__* zonefile; int namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  data; scalar_t__ zone_is_slave; } ;
typedef  int /*<<< orphan*/  state ;
typedef  int /*<<< orphan*/  rr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int LDNS_RR_BUF_SIZE ; 
 scalar_t__ VERB_ALGO ; 
 int /*<<< orphan*/  auth_data_cmp ; 
 int /*<<< orphan*/  auth_data_del ; 
 int /*<<< orphan*/  FUNC0 (struct auth_zone*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct sldns_file_parse_state*,char*,int /*<<< orphan*/ ,struct config_file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sldns_file_parse_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*) ; 
 scalar_t__ FUNC12 (char*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,char*,char*,char*) ; 
 scalar_t__ verbosity ; 

int
FUNC15(struct auth_zone* z, struct config_file* cfg)
{
	uint8_t rr[LDNS_RR_BUF_SIZE];
	struct sldns_file_parse_state state;
	char* zfilename;
	FILE* in;
	if(!z || !z->zonefile || z->zonefile[0]==0)
		return 1; /* no file, or "", nothing to read */
	
	zfilename = z->zonefile;
	if(cfg->chrootdir && cfg->chrootdir[0] && FUNC12(zfilename,
		cfg->chrootdir, FUNC11(cfg->chrootdir)) == 0)
		zfilename += FUNC11(cfg->chrootdir);
	if(verbosity >= VERB_ALGO) {
		char nm[255+1];
		FUNC1(z->name, nm);
		FUNC14(VERB_ALGO, "read zonefile %s for %s", zfilename, nm);
	}
	in = FUNC3(zfilename, "r");
	if(!in) {
		char* n = FUNC9(z->name, z->namelen);
		if(z->zone_is_slave && errno == ENOENT) {
			/* we fetch the zone contents later, no file yet */
			FUNC14(VERB_ALGO, "no zonefile %s for %s",
				zfilename, n?n:"error");
			FUNC4(n);
			return 1;
		}
		FUNC5("cannot open zonefile %s for %s: %s",
			zfilename, n?n:"error", FUNC10(errno));
		FUNC4(n);
		return 0;
	}

	/* clear the data tree */
	FUNC13(&z->data, auth_data_del, NULL);
	FUNC8(&z->data, &auth_data_cmp);

	FUNC7(&state, 0, sizeof(state));
	/* default TTL to 3600 */
	state.default_ttl = 3600;
	/* set $ORIGIN to the zone name */
	if(z->namelen <= sizeof(state.origin)) {
		FUNC6(state.origin, z->name, z->namelen);
		state.origin_len = z->namelen;
	}
	/* parse the (toplevel) file */
	if(!FUNC0(z, in, rr, sizeof(rr), &state, zfilename, 0, cfg)) {
		char* n = FUNC9(z->name, z->namelen);
		FUNC5("error parsing zonefile %s for %s",
			zfilename, n?n:"error");
		FUNC4(n);
		FUNC2(in);
		return 0;
	}
	FUNC2(in);
	return 1;
}