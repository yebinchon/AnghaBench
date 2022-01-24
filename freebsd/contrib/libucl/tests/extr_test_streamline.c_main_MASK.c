#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {char* key; int keylen; } ;
typedef  TYPE_1__ ucl_object_t ;
struct ucl_emitter_functions {int dummy; } ;
struct ucl_emitter_context {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  UCL_ARRAY ; 
 int /*<<< orphan*/  UCL_EMIT_CONFIG ; 
 int /*<<< orphan*/  UCL_OBJECT ; 
 int UCL_STRING_ESCAPE ; 
 int UCL_STRING_TRIM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/ * stdout ; 
 struct ucl_emitter_functions* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ucl_emitter_functions*) ; 
 int /*<<< orphan*/  FUNC6 (struct ucl_emitter_context*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ucl_emitter_context*) ; 
 int /*<<< orphan*/  FUNC8 (struct ucl_emitter_context*) ; 
 struct ucl_emitter_context* FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,struct ucl_emitter_functions*) ; 
 int /*<<< orphan*/  FUNC10 (struct ucl_emitter_context*,TYPE_1__*) ; 
 TYPE_1__* FUNC11 (double) ; 
 TYPE_1__* FUNC12 (int) ; 
 TYPE_1__* FUNC13 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 

int
FUNC17 (int argc, char **argv)
{
	ucl_object_t *obj, *cur, *ar;
	FILE *out;
	const char *fname_out = NULL;
	struct ucl_emitter_context *ctx;
	struct ucl_emitter_functions *f;
	int ret = 0;

	switch (argc) {
	case 2:
		fname_out = argv[1];
		break;
	}

	if (fname_out != NULL) {
		out = FUNC3 (fname_out, "w");
		if (out == NULL) {
			FUNC1 (-errno);
		}
	}
	else {
		out = stdout;
	}

	obj = FUNC15 (UCL_OBJECT);

	/* Create some strings */
	cur = FUNC13 ("  test string    ", 0, UCL_STRING_TRIM);
	FUNC14 (obj, cur, "key1", 0, false);
	cur = FUNC13 ("  test \nstring\n    ", 0, UCL_STRING_TRIM | UCL_STRING_ESCAPE);
	FUNC14 (obj, cur, "key2", 0, false);
	cur = FUNC13 ("  test string    \n", 0, 0);
	FUNC14 (obj, cur, "key3", 0, false);

	f = FUNC4 (out);
	ctx = FUNC9 (obj, UCL_EMIT_CONFIG, f);

	FUNC0 (ctx != NULL);

	/* Array of numbers */
	ar = FUNC15 (UCL_ARRAY);
	ar->key = "key4";
	ar->keylen = sizeof ("key4") - 1;

	FUNC10 (ctx, ar);
	cur = FUNC12 (10);
	FUNC6 (ctx, cur);
	cur = FUNC11 (10.1);
	FUNC6 (ctx, cur);
	cur = FUNC11 (9.999);
	FUNC6 (ctx, cur);


	FUNC7 (ctx);
	FUNC8 (ctx);
	FUNC5 (f);
	FUNC16 (obj);

	FUNC2 (out);

	return ret;
}