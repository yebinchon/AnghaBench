#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;
struct TYPE_5__ {int fd; int /*<<< orphan*/  size; scalar_t__ offset; } ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 int O_CREAT ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VE_GUESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 
 TYPE_1__* FUNC4 (int) ; 
 int FUNC5 (char const*,int) ; 
 scalar_t__ FUNC6 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

FILE *
FUNC7(const char *filename, const char *mode)
{
	struct stat	st;
	int		fd, m, o;
	FILE		*f;

	if (mode == NULL)
		return NULL;

	switch (*mode++) {
	case 'r':	/* open for reading */
		m = O_RDONLY;
		o = 0;
		break;

	case 'w':	/* open for writing */
		m = O_WRONLY;
		/* These are not actually implemented yet */
		o = O_CREAT | O_TRUNC;
		break;

	default:	/* illegal mode */
		return (NULL);
	}

	if (*mode == '+')
		m = O_RDWR;

	fd = FUNC5(filename, m | o);
	if (fd < 0)
		return NULL;

	f = FUNC4(sizeof(FILE));
	if (f == NULL) {
		FUNC1(fd);
		return NULL;
	}

	if (FUNC3(fd, &st) != 0) {
		FUNC2(f);
		FUNC1(fd);
		return (NULL);
	}

#ifdef LOADER_VERIEXEC
	/* only regular files and only reading makes sense */
	if (S_ISREG(st.st_mode) && !(m & O_WRONLY)) {
		if (verify_file(fd, filename, 0, VE_GUESS) < 0) {
			free(f);
			close(fd);
			return (NULL);
		}
	}
#endif

	f->fd = fd;
	f->offset = 0;
	f->size = st.st_size;

	return (f);
}