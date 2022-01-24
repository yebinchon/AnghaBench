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
struct key {int key_id; char* typen; int key_len; char* key_seq; scalar_t__ typei; struct key* next; } ;
typedef  int /*<<< orphan*/  kbuf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ debug ; 
 struct key* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct key*) ; 
 int FUNC7 (char) ; 
 int key_cnt ; 
 struct key* key_ptr ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (char*,char*,int*,char*,char*) ; 
 char* FUNC12 (char*,char) ; 
 int FUNC13 (char*) ; 

int
FUNC14(
	const char *keyfile,
	struct key **keys
	)
{
	FILE *keyf = FUNC5(keyfile, "r");
	struct key *prev = NULL;
	int scan_cnt, line_cnt = 1;
	char kbuf[200];
	char keystring[129];

	/* HMS: Is it OK to do this later, after we know we have a key file? */
	FUNC0();
	
	if (keyf == NULL) {
		if (debug)
			FUNC10("sntp auth_init: Couldn't open key file %s for reading!\n", keyfile);
		return -1;
	}
	if (FUNC3(keyf)) {
		if (debug)
			FUNC10("sntp auth_init: Key file %s is empty!\n", keyfile);
		FUNC2(keyf);
		return -1;
	}
	key_cnt = 0;
	while (!FUNC3(keyf)) {
		char * octothorpe;
		struct key *act;
		int goodline = 0;

		if (NULL == FUNC4(kbuf, sizeof(kbuf), keyf))
			continue;

		kbuf[sizeof(kbuf) - 1] = '\0';
		octothorpe = FUNC12(kbuf, '#');
		if (octothorpe)
			*octothorpe = '\0';
		act = FUNC1(sizeof(*act));
		/* keep width 15 = sizeof struct key.typen - 1 synced */
		scan_cnt = FUNC11(kbuf, "%d %15s %128s",
					&act->key_id, act->typen, keystring);
		if (scan_cnt == 3) {
			int len = FUNC13(keystring);
			goodline = 1;	/* assume best for now */
			if (len <= 20) {
				act->key_len = len;
				FUNC9(act->key_seq, keystring, len + 1);
			} else if ((len & 1) != 0) {
				goodline = 0; /* it's bad */
			} else {
				int j;
				act->key_len = len >> 1;
				for (j = 0; j < len; j+=2) {
					int val;
					val = (FUNC7(keystring[j]) << 4) |
					       FUNC7(keystring[j+1]);
					if (val < 0) {
						goodline = 0; /* it's bad */
						break;
					}
					act->key_seq[j>>1] = (char)val;
				}
			}
			act->typei = FUNC8(act->typen, NULL);
			if (0 == act->typei) {
				FUNC10("%s: line %d: key %d, %s not supported - ignoring\n",
					keyfile, line_cnt,
					act->key_id, act->typen);
				goodline = 0; /* it's bad */
			}
		}
		if (goodline) {
			act->next = NULL;
			if (NULL == prev)
				*keys = act;
			else
				prev->next = act;
			prev = act;
			key_cnt++;
		} else {
			if (debug) {
				FUNC10("auth_init: scanf %d items, skipping line %d.",
					scan_cnt, line_cnt);
			}
			FUNC6(act);
		}
		line_cnt++;
	}
	FUNC2(keyf);

	key_ptr = *keys;
	return key_cnt;
}