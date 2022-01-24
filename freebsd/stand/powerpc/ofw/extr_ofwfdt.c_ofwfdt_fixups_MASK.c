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
typedef  int uint32_t ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  node ;
typedef  int /*<<< orphan*/  len ;
typedef  scalar_t__ ihandle_t ;
typedef  int /*<<< orphan*/  cell_t ;
typedef  int /*<<< orphan*/  base ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int,int,int /*<<< orphan*/ ,int*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int*,int) ; 
 scalar_t__ FUNC4 (int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int const) ; 
 int /*<<< orphan*/  FUNC10 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (void*,int,char*) ; 
 int* FUNC12 (void*,int,char const*,int*) ; 
 int FUNC13 (void*,char*) ; 
 int /*<<< orphan*/  FUNC14 (void*,int,char const*,int*,int) ; 

__attribute__((used)) static void
FUNC15(void *fdtp)
{
	int offset, len, i;
	phandle_t node;
	ihandle_t rtas;
	const void *prop;

	/*
	 * Instantiate and add reservations for RTAS state if present
	 */

	offset = FUNC13(fdtp, "/rtas");
	if (offset > 0) {
		uint32_t base;
		void *rtasmem;
		char path[255];

		node = FUNC2("/rtas");
		FUNC7(node, path, sizeof(path));
		FUNC3(node, "rtas-size", &len, sizeof(len));

		/* Allocate memory */
		rtasmem = FUNC1(0, len, 4096);

		/* Instantiate RTAS */
		rtas = FUNC6(path);
		base = 0;
		FUNC0("instantiate-rtas", rtas, 1, 1, (cell_t)rtas,
		    &base);

		/* Store info to FDT using Linux convention */
		base = FUNC8(base);
		FUNC14(fdtp, offset, "linux,rtas-entry", &base,
		    sizeof(base));
		base = FUNC8((uint32_t)rtasmem);
		offset = FUNC13(fdtp, "/rtas");
		FUNC14(fdtp, offset, "linux,rtas-base", &base,
		    sizeof(base));

		/* Mark RTAS private data area reserved */
		FUNC10(fdtp, base, len);
	} else {
		/*
		 * Remove /memory/available properties, which reflect long-gone
		 * OF state. Note that this doesn't work if we need RTAS still,
		 * since that's part of the firmware.
		 */
		offset = FUNC13(fdtp, "/memory@0");
		if (offset > 0)
			FUNC11(fdtp, offset, "available");
	}

	
	/*
	 * Convert stored ihandles under /chosen to xref phandles
	 */
	offset = FUNC13(fdtp, "/chosen");
	if (offset > 0) {
		const char *chosenprops[] = {"stdout", "stdin", "mmu", "cpu",
		    NULL};
		const uint32_t *ihand;
		for (i = 0; chosenprops[i] != NULL; i++) {
			ihand = FUNC12(fdtp, offset, chosenprops[i], &len);
			if (ihand != NULL && len == sizeof(*ihand)) {
				node = FUNC5(
				    FUNC9(*ihand));
				if (FUNC4(node, "phandle"))
					FUNC3(node, "phandle", &node,
					    sizeof(node));
				else if (FUNC4(node, "linux,phandle"))
					FUNC3(node, "linux,phandle", &node,
					    sizeof(node));
				else if (FUNC4(node, "ibm,phandle"))
					FUNC3(node, "ibm,phandle", &node,
					    sizeof(node));
				node = FUNC8(node);
				FUNC14(fdtp, offset, chosenprops[i], &node,
				    sizeof(node));
			}

			/* Refind node in case it moved */
			offset = FUNC13(fdtp, "/chosen");
		}
	}
}