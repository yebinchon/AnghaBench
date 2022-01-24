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
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_STRING ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _kern ; 
 int /*<<< orphan*/  a ; 
 int /*<<< orphan*/ * a_root ; 
 int /*<<< orphan*/ * a_root1 ; 
 int /*<<< orphan*/  b ; 
 int /*<<< orphan*/ * b_root ; 
 int /*<<< orphan*/  c ; 
 int /*<<< orphan*/  clist ; 
 int /*<<< orphan*/  clist1 ; 
 int /*<<< orphan*/  clist2 ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysctl_dyn_sysctl_test ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int
FUNC12(module_t mod, int cmd, void *arg)
{
	int error;

	error = 0;
	switch (cmd) {
	case MOD_LOAD:
		/* Initialize the contexts */
		FUNC8("Initializing contexts and creating subtrees.\n\n");
		FUNC10(&clist);
		FUNC10(&clist1);
		FUNC10(&clist2);
		/*
		 * Create two partially overlapping subtrees, belonging
		 * to different contexts.
		 */
		FUNC8("TREE		ROOT		  NAME\n");
		a_root = FUNC4(&clist,
			OID_AUTO, "dyn_sysctl", CTLFLAG_RW, 0,
			"dyn_sysctl root node");
		a_root = FUNC4(&clist1,
			OID_AUTO, "dyn_sysctl", CTLFLAG_RW, 0,
			"dyn_sysctl root node");
		if (a_root == NULL) {
			FUNC8("SYSCTL_ADD_NODE failed!\n");
			return (EINVAL);
		}
		FUNC1(&clist, FUNC6(a_root),
		    OID_AUTO, "long_a", CTLFLAG_RW, &a, "just to try");
		FUNC0(&clist, FUNC6(a_root),
		    OID_AUTO, "int_b", CTLFLAG_RW, &b, 0, "just to try 1");
		a_root1 = FUNC2(&clist, FUNC6(a_root),
		    OID_AUTO, "nextlevel", CTLFLAG_RD, 0, "one level down");
		FUNC5(&clist, FUNC6(a_root1),
		    OID_AUTO, "string_c", CTLFLAG_RD, c, 0, "just to try 2");
		FUNC8("1. (%p)	/		  dyn_sysctl\n", &clist);

		/* Add a subtree under already existing category */
		a_root1 = FUNC2(&clist, FUNC7(_kern),
		    OID_AUTO, "dyn_sysctl", CTLFLAG_RW, 0, "dyn_sysctl root node");
		if (a_root1 == NULL) {
			FUNC8("SYSCTL_ADD_NODE failed!\n");
			return (EINVAL);
		}
		FUNC3(&clist, FUNC6(a_root1),
		    OID_AUTO, "procedure", CTLTYPE_STRING | CTLFLAG_RD,
		    NULL, 0, sysctl_dyn_sysctl_test, "A",
		    "I can be here, too");
		FUNC8("   (%p)	/kern		  dyn_sysctl\n", &clist);

		/* Overlap second tree with the first. */
		b_root = FUNC2(&clist1, FUNC6(a_root),
		    OID_AUTO, "nextlevel", CTLFLAG_RD, 0, "one level down");
		FUNC5(&clist1, FUNC6(b_root),
		    OID_AUTO, "string_c1", CTLFLAG_RD, c, 0, "just to try 2");
		FUNC8("2. (%p)	/		  dyn_sysctl	(overlapping #1)\n", &clist1);

		/*
		 * And now do something stupid. Connect another subtree to
		 * dynamic oid.
		 * WARNING: this is an example of WRONG use of dynamic sysctls.
		 */
		b_root=FUNC2(&clist2, FUNC6(a_root1),
		    OID_AUTO, "bad", CTLFLAG_RW, 0, "dependent node");
		FUNC5(&clist2, FUNC6(b_root),
		    OID_AUTO, "string_c", CTLFLAG_RD, c, 0, "shouldn't panic");
		FUNC8("3. (%p)	/kern/dyn_sysctl  bad		(WRONG!)\n", &clist2);
		break;
	case MOD_UNLOAD:
		FUNC8("1. Try to free ctx1 (%p): ", &clist);
		if (FUNC9(&clist) != 0)
			FUNC8("failed: expected. Need to remove ctx3 first.\n");
		else
			FUNC8("HELP! sysctl_ctx_free(%p) succeeded. EXPECT PANIC!!!\n", &clist);
		FUNC8("2. Try to free ctx3 (%p): ", &clist2);
		if (FUNC9(&clist2) != 0) {
			FUNC8("sysctl_ctx_free(%p) failed!\n", &clist2);
			/* Remove subtree forcefully... */
			FUNC11(b_root, 1, 1);
			FUNC8("sysctl_remove_oid(%p) succeeded\n", b_root);
		} else
			FUNC8("Ok\n");
		FUNC8("3. Try to free ctx1 (%p) again: ", &clist);
		if (FUNC9(&clist) != 0) {
			FUNC8("sysctl_ctx_free(%p) failed!\n", &clist);
			/* Remove subtree forcefully... */
			FUNC11(a_root1, 1, 1);
			FUNC8("sysctl_remove_oid(%p) succeeded\n", a_root1);
		} else
			FUNC8("Ok\n");
		FUNC8("4. Try to free ctx2 (%p): ", &clist1);
		if (FUNC9(&clist1) != 0) {
			FUNC8("sysctl_ctx_free(%p) failed!\n", &clist1);
			/* Remove subtree forcefully... */
			FUNC11(a_root, 1, 1);
		} else
			FUNC8("Ok\n");
		break;
	default:
		error = EOPNOTSUPP;
		break;
	}
	return (error);
}