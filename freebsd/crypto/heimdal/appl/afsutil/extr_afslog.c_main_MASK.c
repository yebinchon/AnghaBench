#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cell_list {int /*<<< orphan*/ * cell; struct cell_list* next; } ;
typedef  int /*<<< orphan*/  krb5_principal ;
struct TYPE_4__ {int num_strings; char** strings; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  args ; 
 scalar_t__ cache_string ; 
 struct cell_list* cell_list ; 
 TYPE_1__ cells ; 
 scalar_t__ client_string ; 
 int /*<<< orphan*/ * context ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__ files ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,int*) ; 
 scalar_t__ help_flag ; 
 int /*<<< orphan*/ * id ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 int FUNC14 (int /*<<< orphan*/ **) ; 
 int FUNC15 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  log_func ; 
 int /*<<< orphan*/  num_args ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 scalar_t__ FUNC19 (char*,char) ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 scalar_t__ unlog_flag ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 scalar_t__ verbose ; 
 scalar_t__ version_flag ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ *) ; 

int
FUNC23(int argc, char **argv)
{
    int optind = 0;
    int i;
    int num;
    int ret = 0;
    int failed = 0;
    struct cell_list *p;

    FUNC18(argv[0]);

    if(FUNC7(args, num_args, argc, argv, &optind))
	FUNC21(1);
    if(help_flag)
	FUNC21(0);
    if(version_flag) {
	FUNC17(NULL);
	FUNC5(0);
    }

    if(!FUNC8())
	FUNC4(1, "AFS does not seem to be present on this machine");

    if(unlog_flag){
	FUNC9();
	FUNC5(0);
    }
#ifdef KRB5
    ret = krb5_init_context(&context);
    if (ret) {
	context = NULL;
    } else {
	if (client_string) {
	    krb5_principal client;

	    ret = krb5_parse_name(context, client_string, &client);
	    if (ret == 0)
		ret = krb5_cc_cache_match(context, client, &id);
	    if (ret)
		id = NULL;
	}
	if (id == NULL && cache_string) {
	    if(krb5_cc_resolve(context, cache_string, &id) != 0) {
		krb5_warnx(context, "failed to open kerberos 5 cache '%s'",
			   cache_string);
		id = NULL;
	    }
	}
	if (id == NULL)
	    if(krb5_cc_default(context, &id) != 0)
		id = NULL;
    }
#endif

    if (verbose)
	FUNC10(log_func, NULL);

    num = 0;
    for(i = 0; i < files.num_strings; i++){
	FUNC2(files.strings[i]);
	num++;
    }
    FUNC6 (&files);
    for(i = 0; i < cells.num_strings; i++){
	FUNC1(cells.strings[i], 1);
	num++;
    }
    FUNC6 (&cells);
    for(i = optind; i < argc; i++){
	num++;
	if(FUNC20(argv[i], ".") == 0 ||
	   FUNC20(argv[i], "..") == 0 ||
	   FUNC19(argv[i], '/') ||
	   FUNC0(argv[i], F_OK) == 0)
	    FUNC2(argv[i]);
	else
	    FUNC1(argv[i], 1);
    }
    if(num == 0) {
	if(FUNC3(NULL))
	    failed++;
    } else
	for(p = cell_list; p; p = p->next) {
	    if(verbose)
		FUNC22("Getting tokens for cell \"%s\"", p->cell);
	    if(FUNC3(p->cell))
		failed++;
    }

    return failed;
}