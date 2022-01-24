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
struct formats {int /*<<< orphan*/ * f_mode; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBADOP ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct formats* formats ; 
 int FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 char FUNC6 (char) ; 

__attribute__((used)) static char *
FUNC7(int peer, char *recvbuffer, ssize_t size,
	char **filename, char **mode)
{
	char	*cp;
	int	i;
	struct formats *pf;

	*mode = NULL;
	cp = recvbuffer;

	i = FUNC1(peer, recvbuffer, size);
	if (i >= PATH_MAX) {
		FUNC5(LOG_ERR, "Bad option - filename too long");
		FUNC3(peer, EBADOP);
		FUNC0(1);
	}
	*filename = recvbuffer;
	FUNC5(LOG_INFO, "Filename: '%s'", *filename);
	cp += i;

	i = FUNC1(peer, cp, size);
	*mode = cp;
	cp += i;

	/* Find the file transfer mode */
	for (cp = *mode; *cp; cp++)
		if (FUNC2(*cp))
			*cp = FUNC6(*cp);
	for (pf = formats; pf->f_mode; pf++)
		if (FUNC4(pf->f_mode, *mode) == 0)
			break;
	if (pf->f_mode == NULL) {
		FUNC5(LOG_ERR,
		    "Bad option - Unknown transfer mode (%s)", *mode);
		FUNC3(peer, EBADOP);
		FUNC0(1);
	}
	FUNC5(LOG_INFO, "Mode: '%s'", *mode);

	return (cp + 1);
}