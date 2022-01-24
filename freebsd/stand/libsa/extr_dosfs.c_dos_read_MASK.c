#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct open_file {scalar_t__ f_fsdata; } ;
typedef  int off_t ;
struct TYPE_9__ {int bsize; int /*<<< orphan*/  lsndir; int /*<<< orphan*/  fatsz; } ;
struct TYPE_8__ {int offset; int c; TYPE_2__* fs; int /*<<< orphan*/  de; } ;
typedef  TYPE_1__ DOS_FILE ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (TYPE_2__*,int) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int FUNC2 (TYPE_2__*,int*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,scalar_t__,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9(struct open_file *fd, void *buf, size_t nbyte, size_t *resid)
{
    off_t size;
    u_int nb, off, clus, c, cnt, n;
    DOS_FILE *f = (DOS_FILE *)fd->f_fsdata;
    int err = 0;

    /*
     * as ioget() can be called *a lot*, use twiddle here.
     * also 4 seems to be good value not to slow loading down too much:
     * with 270MB file (~540k ioget() calls, twiddle can easily waste 4-5sec.
     */
    FUNC8(4);
    nb = (u_int)nbyte;
    if ((size = FUNC3(f->fs, &f->de)) == -1)
	return (EINVAL);
    if (nb > (n = size - f->offset))
	nb = n;
    off = f->offset;
    if ((clus = FUNC7(f->fs->fatsz, &f->de)))
	off &= f->fs->bsize - 1;
    c = f->c;
    cnt = nb;
    while (cnt) {
	n = 0;
	if (!c) {
	    if ((c = clus))
		n = FUNC1(f->fs, f->offset);
	} else if (!off)
	    n++;
	while (n--) {
	    if ((err = FUNC2(f->fs, &c)))
		goto out;
	    if (!FUNC5(f->fs, c)) {
		err = EINVAL;
		goto out;
	    }
	}
	if (!clus || (n = f->fs->bsize - off) > cnt)
	    n = cnt;
	if ((err = FUNC4(f->fs, (c ? FUNC0(f->fs, c) :
				      FUNC6(f->fs->lsndir)) + off, buf, n)))
	    goto out;
	f->offset += n;
	f->c = c;
	off = 0;
	buf = (char *)buf + n;
	cnt -= n;
    }
 out:
    if (resid)
	*resid = nbyte - nb + cnt;
    return (err);
}