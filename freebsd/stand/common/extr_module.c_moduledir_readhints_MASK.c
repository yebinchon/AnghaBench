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
typedef  int /*<<< orphan*/  version ;
struct stat {int st_size; } ;
struct moduledir {int* d_hints; int d_flags; int d_hintsz; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int LINKER_HINTS_MAX ; 
 int LINKER_HINTS_VERSION ; 
 int MDIR_NOHINTS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int* FUNC2 (int) ; 
 char* FUNC3 (struct moduledir*,char*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int*,int) ; 
 scalar_t__ FUNC6 (char*,struct stat*) ; 

__attribute__((used)) static void
FUNC7(struct moduledir *mdp)
{
	struct stat	st;
	char	*path;
	int		fd, size, version;

	if (mdp->d_hints != NULL || (mdp->d_flags & MDIR_NOHINTS))
		return;
	path = FUNC3(mdp, "linker.hints");
	if (FUNC6(path, &st) != 0 ||
	  st.st_size < (ssize_t)(sizeof(version) + sizeof(int)) ||
	  st.st_size > LINKER_HINTS_MAX || (fd = FUNC4(path, O_RDONLY)) < 0) {
		FUNC1(path);
		mdp->d_flags |= MDIR_NOHINTS;
		return;
	}
	FUNC1(path);
	size = FUNC5(fd, &version, sizeof(version));
	if (size != sizeof(version) || version != LINKER_HINTS_VERSION)
		goto bad;
	size = st.st_size - size;
	mdp->d_hints = FUNC2(size);
	if (mdp->d_hints == NULL)
		goto bad;
	if (FUNC5(fd, mdp->d_hints, size) != size)
		goto bad;
	mdp->d_hintsz = size;
	FUNC0(fd);
	return;
bad:
	FUNC0(fd);
	FUNC1(mdp->d_hints);
	mdp->d_hints = NULL;
	mdp->d_flags |= MDIR_NOHINTS;
	return;
}