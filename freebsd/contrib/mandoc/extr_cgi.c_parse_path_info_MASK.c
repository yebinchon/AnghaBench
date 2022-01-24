#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int equal; int /*<<< orphan*/ * arch; int /*<<< orphan*/ * sec; int /*<<< orphan*/ * manpath; void* query; } ;
struct req {TYPE_1__ q; scalar_t__ isquery; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 void* FUNC3 (char const*) ; 
 void* FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const*,char) ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 
 char* FUNC8 (char const*,char) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct req*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct req *req, const char *path)
{
	const char	*name, *sec, *end;

	req->isquery = 0;
	req->q.equal = 1;
	req->q.manpath = NULL;
	req->q.arch = NULL;

	/* Mandatory manual page name. */
	if ((name = FUNC8(path, '/')) == NULL)
		name = path;
	else
		name++;

	/* Optional trailing section. */
	sec = FUNC8(name, '.');
	if (sec != NULL && FUNC2((unsigned char)*++sec)) {
		req->q.query = FUNC4(name, sec - name - 1);
		req->q.sec = FUNC3(sec);
	} else {
		req->q.query = FUNC3(name);
		req->q.sec = NULL;
	}

	/* Handle the case of name[.section] only. */
	if (name == path)
		return;

	/* Optional manpath. */
	end = FUNC6(path, '/');
	req->q.manpath = FUNC4(path, end - path);
	if (FUNC10(req, req->q.manpath)) {
		path = end + 1;
		if (name == path)
			return;
	} else {
		FUNC1(req->q.manpath);
		req->q.manpath = NULL;
	}

	/* Optional section. */
	if (FUNC7(path, "man", 3) == 0 || FUNC7(path, "cat", 3) == 0) {
		path += 3;
		end = FUNC6(path, '/');
		FUNC1(req->q.sec);
		req->q.sec = FUNC4(path, end - path);
		path = end + 1;
		if (name == path)
			return;
	}

	/* Optional architecture. */
	end = FUNC6(path, '/');
	if (end + 1 != name) {
		FUNC5(
		    "You specified too many directory components.");
		FUNC0(EXIT_FAILURE);
	}
	req->q.arch = FUNC4(path, end - path);
	if (FUNC9(req->q.arch) == 0) {
		FUNC5(
		    "You specified an invalid directory component.");
		FUNC0(EXIT_FAILURE);
	}
}