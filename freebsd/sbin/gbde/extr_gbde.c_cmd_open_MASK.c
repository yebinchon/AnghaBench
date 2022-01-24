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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct stat {int st_size; int /*<<< orphan*/  st_mode; } ;
struct g_bde_softc {int /*<<< orphan*/  sha2; } ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGMEDIASIZE ; 
 int /*<<< orphan*/  DIOCGSECTORSIZE ; 
 int ENOENT ; 
 int ENOTDIR ; 
 int ESRCH ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int FUNC4 (int,struct stat*) ; 
 int FUNC5 (struct g_bde_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC11(struct g_bde_softc *sc, int dfd , const char *l_opt, u_int *nkey)
{
	int error;
	int ffd;
	u_char keyloc[16];
	u_int sectorsize;
	off_t mediasize;
	struct stat st;

	error = FUNC6(dfd, DIOCGSECTORSIZE, &sectorsize);
	if (error)
		sectorsize = 512;
	error = FUNC6(dfd, DIOCGMEDIASIZE, &mediasize);
	if (error) {
		error = FUNC4(dfd, &st);
		if (error == 0 && FUNC0(st.st_mode))
			mediasize = st.st_size;
		else
			error = ENOENT;
	}
	if (error)
		mediasize = (off_t)-1;
	if (l_opt != NULL) {
		ffd = FUNC8(l_opt, O_RDONLY, 0);
		if (ffd < 0)
			FUNC2(1, "%s", l_opt);
		FUNC10(ffd, keyloc, sizeof keyloc);
		FUNC1(ffd);
	} else {
		FUNC7(keyloc, 0, sizeof keyloc);
	}

	error = FUNC5(sc, sc->sha2, keyloc, mediasize,
	    sectorsize, nkey);
	if (error == ENOENT)
		FUNC3(1, "Lock was destroyed.");
	if (error == ESRCH)
		FUNC3(1, "Lock was nuked.");
	if (error == ENOTDIR)
		FUNC3(1, "Lock not found");
	if (error != 0)
		FUNC3(1, "Error %d decrypting lock", error);
	if (nkey)
		FUNC9("Opened with key %u\n", 1 + *nkey);
	return;
}