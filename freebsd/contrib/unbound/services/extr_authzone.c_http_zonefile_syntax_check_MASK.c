#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct sldns_file_parse_state {int default_ttl; int origin_len; scalar_t__ prev_rr_len; int /*<<< orphan*/ * prev_rr; int /*<<< orphan*/ * origin; } ;
struct auth_xfer {int namelen; scalar_t__ dclass; TYPE_1__* task_transfer; int /*<<< orphan*/  name; } ;
struct auth_chunk {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  rr ;
typedef  int /*<<< orphan*/  pstate ;
struct TYPE_2__ {struct auth_chunk* chunks_first; } ;

/* Variables and functions */
 int LDNS_RR_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct auth_chunk**,size_t*,int /*<<< orphan*/ *,struct sldns_file_parse_state*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sldns_file_parse_state*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int /*<<< orphan*/ *,size_t*,size_t*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,size_t,size_t) ; 

__attribute__((used)) static int
FUNC10(struct auth_xfer* xfr, sldns_buffer* buf)
{
	uint8_t rr[LDNS_RR_BUF_SIZE];
	size_t rr_len, dname_len = 0;
	struct sldns_file_parse_state pstate;
	struct auth_chunk* chunk;
	size_t chunk_pos;
	int e;
	FUNC5(&pstate, 0, sizeof(pstate));
	pstate.default_ttl = 3600;
	if(xfr->namelen < sizeof(pstate.origin)) {
		pstate.origin_len = xfr->namelen;
		FUNC4(pstate.origin, xfr->name, xfr->namelen);
	}
	chunk = xfr->task_transfer->chunks_first;
	chunk_pos = 0;
	if(!FUNC2(&chunk, &chunk_pos, buf, &pstate)) {
		return 0;
	}
	rr_len = sizeof(rr);
	e=FUNC8((char*)FUNC6(buf), rr, &rr_len,
		&dname_len, pstate.default_ttl,
		pstate.origin_len?pstate.origin:NULL, pstate.origin_len,
		pstate.prev_rr_len?pstate.prev_rr:NULL, pstate.prev_rr_len);
	if(e != 0) {
		FUNC3("parse failure on first RR[%d]: %s",
			FUNC1(e),
			FUNC7(FUNC0(e)));
		return 0;
	}
	/* check that class is correct */
	if(FUNC9(rr, rr_len, dname_len) != xfr->dclass) {
		FUNC3("parse failure: first record in downloaded zonefile "
			"from wrong RR class");
		return 0;
	}
	return 1;
}