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
struct gmesh {int dummy; } ;
struct ggeom {int /*<<< orphan*/  lg_name; } ;
struct gctl_req {int dummy; } ;
struct gclass {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 char* GPART_PARAM_BOOTCODE ; 
 char* GPART_PARAM_INDEX ; 
 char* GPART_PARAM_PARTCODE ; 
 size_t VTOC_BOOTSIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct gclass* FUNC3 (struct gmesh*,char const*) ; 
 struct ggeom* FUNC4 (struct gclass*,char const*) ; 
 char* FUNC5 (struct ggeom*,char*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int FUNC7 (struct gctl_req*,char*,size_t,void*) ; 
 int FUNC8 (struct gctl_req*,char*) ; 
 char* FUNC9 (struct gctl_req*,char*) ; 
 int FUNC10 (struct gctl_req*,char*) ; 
 scalar_t__ FUNC11 (struct gctl_req*,char*) ; 
 scalar_t__ FUNC12 (struct gctl_req*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct gmesh*) ; 
 int FUNC14 (struct gmesh*) ; 
 void* FUNC15 (char const*,size_t*) ; 
 int /*<<< orphan*/  FUNC16 (struct gctl_req*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct ggeom*,int,void*,size_t) ; 
 int /*<<< orphan*/  FUNC18 (struct ggeom*,int,void*) ; 
 scalar_t__ FUNC19 (char const*,char*) ; 

__attribute__((used)) static void
FUNC20(struct gctl_req *req, unsigned int fl)
{
	struct gmesh mesh;
	struct gclass *classp;
	struct ggeom *gp;
	const char *s;
	void *bootcode, *partcode;
	size_t bootsize, partsize;
	int error, idx, vtoc8;

	if (FUNC12(req, GPART_PARAM_BOOTCODE)) {
		s = FUNC9(req, GPART_PARAM_BOOTCODE);
		bootsize = 800 * 1024;		/* Arbitrary limit. */
		bootcode = FUNC15(s, &bootsize);
		error = FUNC7(req, GPART_PARAM_BOOTCODE, bootsize,
		    bootcode);
		if (error)
			FUNC1(EXIT_FAILURE, error, "internal error");
	} else
		bootcode = NULL;

	s = FUNC9(req, "class");
	if (s == NULL)
		FUNC0();
	error = FUNC14(&mesh);
	if (error != 0)
		FUNC1(EXIT_FAILURE, error, "Cannot get GEOM tree");
	classp = FUNC3(&mesh, s);
	if (classp == NULL) {
		FUNC13(&mesh);
		FUNC2(EXIT_FAILURE, "Class %s not found.", s);
	}
	if (FUNC10(req, "nargs") != 1)
		FUNC2(EXIT_FAILURE, "Invalid number of arguments.");
	s = FUNC9(req, "arg0");
	if (s == NULL)
		FUNC0();
	gp = FUNC4(classp, s);
	if (gp == NULL)
		FUNC2(EXIT_FAILURE, "No such geom: %s.", s);
	s = FUNC5(gp, "scheme");
	if (s == NULL)
		FUNC2(EXIT_FAILURE, "Scheme not found for geom %s", gp->lg_name);
	if (FUNC19(s, "VTOC8") == 0)
		vtoc8 = 1;
	else
		vtoc8 = 0;

	if (FUNC12(req, GPART_PARAM_PARTCODE)) {
		s = FUNC9(req, GPART_PARAM_PARTCODE);
		if (vtoc8 != 0)
			partsize = VTOC_BOOTSIZE;
		else
			partsize = 1024 * 1024;		/* Arbitrary limit. */
		partcode = FUNC15(s, &partsize);
		error = FUNC8(req, GPART_PARAM_PARTCODE);
		if (error)
			FUNC1(EXIT_FAILURE, error, "internal error");
	} else
		partcode = NULL;

	if (FUNC12(req, GPART_PARAM_INDEX)) {
		if (partcode == NULL)
			FUNC2(EXIT_FAILURE, "-i is only valid with -p");
		idx = (int)FUNC11(req, GPART_PARAM_INDEX);
		if (idx < 1)
			FUNC2(EXIT_FAILURE, "invalid partition index");
		error = FUNC8(req, GPART_PARAM_INDEX);
		if (error)
			FUNC1(EXIT_FAILURE, error, "internal error");
	} else
		idx = 0;

	if (partcode != NULL) {
		if (vtoc8 == 0) {
			if (idx == 0)
				FUNC2(EXIT_FAILURE, "missing -i option");
			FUNC17(gp, idx, partcode, partsize);
		} else {
			if (partsize != VTOC_BOOTSIZE)
				FUNC2(EXIT_FAILURE, "invalid bootcode");
			FUNC18(gp, idx, partcode);
		}
	} else
		if (bootcode == NULL)
			FUNC2(EXIT_FAILURE, "no -b nor -p");

	if (bootcode != NULL)
		FUNC16(req, fl);

	FUNC13(&mesh);
	FUNC6(partcode);
}