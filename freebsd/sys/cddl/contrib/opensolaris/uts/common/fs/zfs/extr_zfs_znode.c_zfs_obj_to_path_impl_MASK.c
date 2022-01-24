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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  sa_handle_t ;
typedef  int /*<<< orphan*/  sa_attr_type_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 int ESTALE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  MASTER_NODE_OBJ ; 
 int /*<<< orphan*/  MAXNAMELEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long) ; 
 int /*<<< orphan*/  ZFS_UNLINKED_SET ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 size_t FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(objset_t *osp, uint64_t obj, sa_handle_t *hdl,
    sa_attr_type_t *sa_table, char *buf, int len)
{
	sa_handle_t *sa_hdl;
	sa_handle_t *prevhdl = NULL;
	dmu_buf_t *prevdb = NULL;
	dmu_buf_t *sa_db = NULL;
	char *path = buf + len - 1;
	int error;

	*path = '\0';
	sa_hdl = hdl;

	uint64_t deleteq_obj;
	FUNC1(FUNC7(osp, MASTER_NODE_OBJ,
	    ZFS_UNLINKED_SET, sizeof (uint64_t), 1, &deleteq_obj));
	error = FUNC8(osp, deleteq_obj, obj);
	if (error == 0) {
		return (ESTALE);
	} else if (error != ENOENT) {
		return (error);
	}
	error = 0;

	for (;;) {
		uint64_t pobj;
		char component[MAXNAMELEN + 2];
		size_t complen;
		int is_xattrdir;

		if (prevdb)
			FUNC12(prevhdl, prevdb, FTAG);

		if ((error = FUNC11(osp, sa_hdl, sa_table, &pobj,
		    &is_xattrdir)) != 0)
			break;

		if (pobj == obj) {
			if (path[0] != '/')
				*--path = '/';
			break;
		}

		component[0] = '/';
		if (is_xattrdir) {
			(void) FUNC5(component + 1, "<xattrdir>");
		} else {
			error = FUNC9(osp, pobj, obj,
			    FUNC2(-1ULL), component + 1);
			if (error != 0)
				break;
		}

		complen = FUNC6(component);
		path -= complen;
		FUNC0(path >= buf);
		FUNC3(component, path, complen);
		obj = pobj;

		if (sa_hdl != hdl) {
			prevhdl = sa_hdl;
			prevdb = sa_db;
		}
		error = FUNC10(osp, obj, &sa_hdl, &sa_db, FTAG);
		if (error != 0) {
			sa_hdl = prevhdl;
			sa_db = prevdb;
			break;
		}
	}

	if (sa_hdl != NULL && sa_hdl != hdl) {
		FUNC0(sa_db != NULL);
		FUNC12(sa_hdl, sa_db, FTAG);
	}

	if (error == 0)
		(void) FUNC4(buf, path, buf + len - path);

	return (error);
}