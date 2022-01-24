#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sldns_file_parse_state {int default_ttl; int origin_len; char* origin; int /*<<< orphan*/  lineno; } ;
struct sldns_buffer {int dummy; } ;
struct auth_zone {int /*<<< orphan*/  data; } ;
struct auth_xfer {int namelen; TYPE_2__* task_transfer; scalar_t__ serial; scalar_t__ have_zone; int /*<<< orphan*/  name; } ;
struct auth_chunk {int len; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  pstate ;
typedef  int /*<<< orphan*/  preview ;
struct TYPE_4__ {TYPE_1__* master; struct auth_chunk* chunks_first; } ;
struct TYPE_3__ {int /*<<< orphan*/  file; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 scalar_t__ VERB_ALGO ; 
 int /*<<< orphan*/  auth_data_cmp ; 
 int /*<<< orphan*/  auth_data_del ; 
 scalar_t__ FUNC0 (struct auth_chunk**,size_t*,struct sldns_buffer*) ; 
 scalar_t__ FUNC1 (struct sldns_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct sldns_buffer*) ; 
 scalar_t__ FUNC3 (struct auth_chunk*) ; 
 int /*<<< orphan*/  FUNC4 (struct auth_xfer*,struct auth_zone*,struct sldns_buffer*,struct sldns_file_parse_state*) ; 
 scalar_t__ FUNC5 (struct sldns_buffer*,struct sldns_file_parse_state*) ; 
 scalar_t__ FUNC6 (struct sldns_buffer*,struct sldns_file_parse_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct auth_xfer*,struct sldns_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sldns_file_parse_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sldns_buffer*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,char*,int /*<<< orphan*/ ,int,...) ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static int
FUNC16(struct auth_xfer* xfr, struct auth_zone* z,
	struct sldns_buffer* scratch_buffer)
{
	/* parse data in chunks */
	/* parse RR's and read into memory. ignore $INCLUDE from the
	 * downloaded file*/
	struct sldns_file_parse_state pstate;
	struct auth_chunk* chunk;
	size_t chunk_pos;
	FUNC11(&pstate, 0, sizeof(pstate));
	pstate.default_ttl = 3600;
	if(xfr->namelen < sizeof(pstate.origin)) {
		pstate.origin_len = xfr->namelen;
		FUNC10(pstate.origin, xfr->name, xfr->namelen);
	}

	if(verbosity >= VERB_ALGO)
		FUNC15(VERB_ALGO, "http download %s of size %d",
		xfr->task_transfer->master->file,
		(int)FUNC3(xfr->task_transfer->chunks_first));
	if(xfr->task_transfer->chunks_first && verbosity >= VERB_ALGO) {
		char preview[1024];
		if(xfr->task_transfer->chunks_first->len+1 > sizeof(preview)) {
			FUNC10(preview, xfr->task_transfer->chunks_first->data,
				sizeof(preview)-1);
			preview[sizeof(preview)-1]=0;
		} else {
			FUNC10(preview, xfr->task_transfer->chunks_first->data,
				xfr->task_transfer->chunks_first->len);
			preview[xfr->task_transfer->chunks_first->len]=0;
		}
		FUNC9("auth zone http downloaded content preview: %s",
			preview);
	}

	/* perhaps a little syntax check before we try to apply the data? */
	if(!FUNC7(xfr, scratch_buffer)) {
		FUNC8("http download %s/%s does not contain a zonefile, "
			"but got '%s'", xfr->task_transfer->master->host,
			xfr->task_transfer->master->file,
			FUNC13(scratch_buffer));
		return 0;
	}

	/* clear the data tree */
	FUNC14(&z->data, auth_data_del, NULL);
	FUNC12(&z->data, &auth_data_cmp);
	xfr->have_zone = 0;
	xfr->serial = 0;

	chunk = xfr->task_transfer->chunks_first;
	chunk_pos = 0;
	pstate.lineno = 0;
	while(FUNC0(&chunk, &chunk_pos, scratch_buffer)) {
		/* process this line */
		pstate.lineno++;
		FUNC2(scratch_buffer);
		if(FUNC1(scratch_buffer)) {
			continue;
		}
		/* parse line and add RR */
		if(FUNC5(scratch_buffer, &pstate)) {
			continue; /* $ORIGIN has been handled */
		}
		if(FUNC6(scratch_buffer, &pstate)) {
			continue; /* $TTL has been handled */
		}
		if(!FUNC4(xfr, z, scratch_buffer, &pstate)) {
			FUNC15(VERB_ALGO, "error parsing line [%s:%d] %s",
				xfr->task_transfer->master->file,
				pstate.lineno,
				FUNC13(scratch_buffer));
			return 0;
		}
	}
	return 1;
}