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
struct hdb_dbinfo {int dummy; } ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,int*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,struct hdb_dbinfo*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,struct hdb_dbinfo*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,struct hdb_dbinfo*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,struct hdb_dbinfo*) ; 
 struct hdb_dbinfo* FUNC7 (struct hdb_dbinfo*,struct hdb_dbinfo*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,struct hdb_dbinfo*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct hdb_dbinfo**) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct hdb_dbinfo**) ; 
 scalar_t__ help_flag ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  num_args ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 scalar_t__ version_flag ; 

int
FUNC18(int argc, char **argv)
{
    struct hdb_dbinfo *info, *d;
    krb5_context context;
    int ret, o = 0;

    FUNC17(argv[0]);

    if(FUNC2(args, num_args, argc, argv, &o))
	FUNC14(1, args, num_args);

    if(help_flag)
	FUNC14(0, args, num_args);

    if(version_flag){
	FUNC15(NULL);
	FUNC1(0);
    }

    ret = FUNC13(&context);
    if (ret)
	FUNC0 (1, "krb5_init_context failed: %d", ret);

    ret = FUNC10(context, &info);
    if (ret)
	FUNC11(context, 1, ret, "hdb_get_dbinfo");

    d = NULL;
    while ((d = FUNC7(info, d)) != NULL) {
	const char *s;
	s = FUNC5(context, d);
	FUNC16("label: %s\n", s ? s : "no label");
	s = FUNC8(context, d);
	FUNC16("\trealm: %s\n", s ? s : "no realm");
	s = FUNC4(context, d);
	FUNC16("\tdbname: %s\n", s ? s : "no dbname");
	s = FUNC6(context, d);
	FUNC16("\tmkey_file: %s\n", s ? s : "no mkey file");
	s = FUNC3(context, d);
	FUNC16("\tacl_file: %s\n", s ? s : "no acl file");
    }

    FUNC9(context, &info);

    FUNC12(context);

    return 0;
}