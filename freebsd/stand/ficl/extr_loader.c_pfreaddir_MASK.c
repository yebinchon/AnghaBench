#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct stat {int st_blksize; } ;
struct dirent {int /*<<< orphan*/  d_name; scalar_t__ d_reclen; } ;
typedef  int off_t ;
struct TYPE_4__ {int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;

/* Variables and functions */
 int /*<<< orphan*/  FICL_FALSE ; 
 int /*<<< orphan*/  FICL_TRUE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,struct stat*) ; 
 int FUNC2 (int,char*,int) ; 
 int FUNC3 () ; 
 int FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int) ; 
 struct dirent* FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC12(FICL_VM *pVM)
{
#ifdef TESTMAIN
    static struct dirent dirent;
    struct stat sb;
    char *buf;
    off_t off, ptr;
    u_int blksz;
    int bufsz;
#endif
    struct dirent *d;
    int fd;

#if FICL_ROBUST > 1
    vmCheckStack(pVM, 1, 3);
#endif

    fd = FUNC7(pVM->pStack);
#if TESTMAIN
    /*
     * The readdirfd() function is specific to the loader environment.
     * We do the best we can to make freaddir work, but it's not at
     * all guaranteed.
     */
    d = NULL;
    buf = NULL;
    do {
	if (fd == -1)
	    break;
	if (fstat(fd, &sb) == -1)
	    break;
	blksz = (sb.st_blksize) ? sb.st_blksize : getpagesize();
	if ((blksz & (blksz - 1)) != 0)
	    break;
	buf = malloc(blksz);
	if (buf == NULL)
	    break;
	off = lseek(fd, 0LL, SEEK_CUR);
	if (off == -1)
	    break;
	ptr = off;
	if (lseek(fd, 0, SEEK_SET) == -1)
	    break;
	bufsz = getdents(fd, buf, blksz);
	while (bufsz > 0 && bufsz <= ptr) {
	    ptr -= bufsz;
	    bufsz = getdents(fd, buf, blksz);
	}
	if (bufsz <= 0)
	    break;
	d = (void *)(buf + ptr);
	dirent = *d;
	off += d->d_reclen;
	d = (lseek(fd, off, SEEK_SET) != off) ? NULL : &dirent;
    } while (0);
    if (buf != NULL)
	free(buf);
#else
    d = FUNC6(fd);
#endif
    if (d != NULL) {
        FUNC9(pVM->pStack, d->d_name);
        FUNC8(pVM->pStack, FUNC10(d->d_name));
        FUNC8(pVM->pStack, FICL_TRUE);
    } else {
        FUNC8(pVM->pStack, FICL_FALSE);
    }
}