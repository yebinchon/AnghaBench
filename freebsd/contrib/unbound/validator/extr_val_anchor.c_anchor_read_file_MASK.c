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
struct val_anchors {int dummy; } ;
struct trust_anchor {int dummy; } ;
struct sldns_file_parse_state {int default_ttl; int lineno; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  pst ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_DNSKEY ; 
 scalar_t__ LDNS_RR_TYPE_DS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct trust_anchor* FUNC1 (struct val_anchors*,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct sldns_file_parse_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,size_t*,struct sldns_file_parse_state*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct trust_anchor*
FUNC13(struct val_anchors* anchors, sldns_buffer* buffer,
	const char* fname, int onlyone)
{
	struct trust_anchor* ta = NULL, *tanew;
	struct sldns_file_parse_state pst;
	int status;
	size_t len, dname_len;
	uint8_t* rr = FUNC7(buffer);
	int ok = 1;
	FILE* in = FUNC4(fname, "r");
	if(!in) {
		FUNC5("error opening file %s: %s", fname, FUNC12(errno));
		return 0;
	}
	FUNC6(&pst, 0, sizeof(pst));
	pst.default_ttl = 3600;
	pst.lineno = 1;
	while(!FUNC3(in)) {
		len = FUNC8(buffer);
		dname_len = 0;
		status = FUNC9(in, rr, &len, &dname_len, &pst);
		if(len == 0) /* empty, $TTL, $ORIGIN */
			continue;
		if(status != 0) {
			FUNC5("parse error in %s:%d:%d : %s", fname,
				pst.lineno, FUNC0(status),
				FUNC10(status));
			ok = 0;
			break;
		}
		if(FUNC11(rr, len, dname_len) !=
			LDNS_RR_TYPE_DS && FUNC11(rr, len,
			dname_len) != LDNS_RR_TYPE_DNSKEY) {
			continue;
		}
		if(!(tanew=FUNC1(anchors, rr, len, dname_len))) {
			FUNC5("mem error at %s line %d", fname, pst.lineno);
			ok = 0;
			break;
		}
		if(onlyone && ta && ta != tanew) {
			FUNC5("error at %s line %d: no multiple anchor "
				"domains allowed (you can have multiple "
				"keys, but they must have the same name).", 
				fname, pst.lineno);
			ok = 0;
			break;
		}
		ta = tanew;
	}
	FUNC2(in);
	if(!ok) return NULL;
	/* empty file is OK when multiple anchors are allowed */
	if(!onlyone && !ta) return (struct trust_anchor*)1;
	return ta;
}