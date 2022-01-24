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
typedef  int /*<<< orphan*/  cmdbuf ;

/* Variables and functions */
 int COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int MAX_C_NAME ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,char**) ; 
 int code ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (size_t) ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 
 int /*<<< orphan*/  FUNC8 (int,char**) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 
 int FUNC11 (char const*) ; 
 char* FUNC12 (char*,char) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

int
FUNC14(int argc, char **argv, const char *uploadserver)
{
	char	*uargv[4], *path, *pathsep;
	int	 uargc, rval, argpos;
	size_t	 len;
	char	 cmdbuf[MAX_C_NAME];

	(void)FUNC10(cmdbuf, "mput", sizeof(cmdbuf));
	uargv[0] = cmdbuf;
	uargv[1] = argv[0];
	uargc = 2;
	uargv[2] = uargv[3] = NULL;
	pathsep = NULL;
	rval = 1;

	FUNC0("auto_put: target `%s'\n", uploadserver);

	path = FUNC6(uploadserver);
	len = FUNC11(path);
	if (path[len - 1] != '/' && path[len - 1] != ':') {
			/*
			 * make sure we always pass a directory to auto_fetch
			 */
		if (argc > 1) {		/* more than one file to upload */
			len = FUNC11(uploadserver) + 2;	/* path + "/" + "\0" */
			FUNC4(path);
			path = (char *)FUNC5(len);
			(void)FUNC10(path, uploadserver, len);
			(void)FUNC9(path, "/", len);
		} else {		/* single file to upload */
			(void)FUNC10(cmdbuf, "put", sizeof(cmdbuf));
			uargv[0] = cmdbuf;
			pathsep = FUNC12(path, '/');
			if (pathsep == NULL) {
				pathsep = FUNC12(path, ':');
				if (pathsep == NULL) {
					FUNC13("Invalid URL `%s'", path);
					goto cleanup_auto_put;
				}
				pathsep++;
				uargv[2] = FUNC6(pathsep);
				pathsep[0] = '/';
			} else
				uargv[2] = FUNC6(pathsep + 1);
			pathsep[1] = '\0';
			uargc++;
		}
	}
	FUNC0("auto_put: URL `%s' argv[2] `%s'\n",
	    path, FUNC2(uargv[2]));

			/* connect and cwd */
	rval = FUNC3(1, &path);
	if(rval >= 0)
		goto cleanup_auto_put;

	rval = 0;

			/* target filename provided; upload 1 file */
			/* XXX : is this the best way? */
	if (uargc == 3) {
		uargv[1] = argv[0];
		FUNC8(uargc, uargv);
		if ((code / 100) != COMPLETE)
			rval = 1;
	} else {	/* otherwise a target dir: upload all files to it */
		for(argpos = 0; argv[argpos] != NULL; argpos++) {
			uargv[1] = argv[argpos];
			FUNC7(uargc, uargv);
			if ((code / 100) != COMPLETE) {
				rval = argpos + 1;
				break;
			}
		}
	}

 cleanup_auto_put:
	FUNC4(path);
	FUNC1(uargv[2]);
	return (rval);
}