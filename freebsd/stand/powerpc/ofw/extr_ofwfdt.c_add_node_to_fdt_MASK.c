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
typedef  int ssize_t ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  node ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,void*,int) ; 
 int FUNC2 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*) ; 
 scalar_t__ FUNC4 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (void*,int,char*) ; 
 int FUNC8 (void*,int,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 char* FUNC12 (char*,char) ; 

__attribute__((used)) static void
FUNC13(void *buffer, phandle_t node, int fdt_offset)
{
	int i, child_offset, error;
	char name[255], *lastprop, *subname;
	void *propbuf;
	ssize_t proplen;

	lastprop = NULL;
	while (FUNC4(node, lastprop, name) > 0) {
		proplen = FUNC2(node, name);

		/* Detect and correct for errors and strangeness */
		if (proplen < 0)
			proplen = 0;
		if (proplen > 1024)
			proplen = 1024;

		propbuf = FUNC10(proplen);
		if (propbuf == NULL) {
			FUNC11("Cannot allocate memory for prop %s\n", name);
			return;
		}
		FUNC1(node, name, propbuf, proplen);
		error = FUNC8(buffer, fdt_offset, name, propbuf, proplen);
		FUNC9(propbuf);
		lastprop = name;
		if (error)
			FUNC11("Error %d adding property %s to "
			    "node %d\n", error, name, fdt_offset);
	}

	if (!FUNC3(node, "phandle") && !FUNC3(node, "linux,phandle")
	    && !FUNC3(node, "ibm,phandle"))
		FUNC8(buffer, fdt_offset, "phandle", &node, sizeof(node));

	for (node = FUNC0(node); node > 0; node = FUNC6(node)) {
		FUNC5(node, name, sizeof(name));
		subname = FUNC12(name, '/');
		subname++;
		child_offset = FUNC7(buffer, fdt_offset, subname);
		if (child_offset < 0) {
			FUNC11("Error %d adding node %s (%s), skipping\n",
			    child_offset, name, subname);
			continue;
		}
	
                FUNC13(buffer, node, child_offset);
	}
}