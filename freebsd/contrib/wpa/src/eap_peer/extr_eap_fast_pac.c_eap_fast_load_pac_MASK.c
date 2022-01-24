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
struct eap_sm {int dummy; } ;
struct eap_fast_read_ctx {char* buf; int /*<<< orphan*/  line; } ;
struct eap_fast_pac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct eap_fast_read_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_fast_pac*) ; 
 scalar_t__ FUNC2 (struct eap_sm*,char const*,struct eap_fast_read_ctx*) ; 
 char* FUNC3 (struct eap_fast_pac*,char*) ; 
 char* FUNC4 (struct eap_fast_pac*,char*) ; 
 char* FUNC5 (struct eap_fast_pac**,struct eap_fast_pac**) ; 
 char* FUNC6 (struct eap_fast_pac*,char*) ; 
 char* FUNC7 (struct eap_fast_pac*,char*) ; 
 char* FUNC8 (struct eap_fast_pac*,char*) ; 
 char* FUNC9 (struct eap_fast_pac*,char*) ; 
 char* FUNC10 (struct eap_fast_pac**) ; 
 scalar_t__ FUNC11 (struct eap_fast_read_ctx*,char**) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 char* pac_file_hdr ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC14(struct eap_sm *sm, struct eap_fast_pac **pac_root,
		      const char *pac_file)
{
	struct eap_fast_read_ctx rc;
	struct eap_fast_pac *pac = NULL;
	int count = 0;
	char *pos;
	const char *err = NULL;

	if (pac_file == NULL)
		return -1;

	if (FUNC2(sm, pac_file, &rc) < 0)
		return 0;

	if (FUNC11(&rc, &pos) < 0) {
		/* empty file - assume it is fine to overwrite */
		FUNC0(&rc);
		return 0;
	}
	if (FUNC12(pac_file_hdr, rc.buf) != 0)
		err = "Unrecognized header line";

	while (!err && FUNC11(&rc, &pos) == 0) {
		if (FUNC12(rc.buf, "START") == 0)
			err = FUNC10(&pac);
		else if (FUNC12(rc.buf, "END") == 0) {
			err = FUNC5(pac_root, &pac);
			count++;
		} else if (!pac)
			err = "Unexpected line outside START/END block";
		else if (FUNC12(rc.buf, "PAC-Type") == 0)
			err = FUNC9(pac, pos);
		else if (FUNC12(rc.buf, "PAC-Key") == 0)
			err = FUNC7(pac, pos);
		else if (FUNC12(rc.buf, "PAC-Opaque") == 0)
			err = FUNC8(pac, pos);
		else if (FUNC12(rc.buf, "A-ID") == 0)
			err = FUNC3(pac, pos);
		else if (FUNC12(rc.buf, "I-ID") == 0)
			err = FUNC6(pac, pos);
		else if (FUNC12(rc.buf, "A-ID-Info") == 0)
			err = FUNC4(pac, pos);
	}

	if (pac) {
		if (!err)
			err = "PAC block not terminated with END";
		FUNC1(pac);
	}

	FUNC0(&rc);

	if (err) {
		FUNC13(MSG_INFO, "EAP-FAST: %s in '%s:%d'",
			   err, pac_file, rc.line);
		return -1;
	}

	FUNC13(MSG_DEBUG, "EAP-FAST: Read %d PAC entries from '%s'",
		   count, pac_file);

	return 0;
}