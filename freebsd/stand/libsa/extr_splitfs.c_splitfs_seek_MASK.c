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
struct split_file {int tot_pos; int file_pos; int /*<<< orphan*/  curfd; } ;
struct open_file {scalar_t__ f_fsdata; } ;
typedef  int off_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  SEEK_BUF ; 
#define  SEEK_CUR 130 
#define  SEEK_END 129 
#define  SEEK_SET 128 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int const) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (struct open_file*,void*,size_t,size_t*) ; 

__attribute__((used)) static off_t
FUNC6(struct open_file *f, off_t offset, int where)
{
    int nread;
    size_t resid;
    off_t new_pos, seek_by;
    struct split_file *sf;

    sf = (struct split_file *)f->f_fsdata;

    seek_by = offset;
    switch (where) {
    case SEEK_SET:
	seek_by -= sf->tot_pos;
	break;
    case SEEK_CUR:
	break;
    case SEEK_END:
	FUNC4("splitfs_seek: SEEK_END not supported");
	break;
    default:
	errno = EINVAL;
	return (-1);
    }

    if (seek_by > 0) {
	/*
	 * Seek forward - implemented using splitfs_read(), because otherwise we'll be
	 * unable to detect that we have crossed slice boundary and hence
	 * unable to do a long seek crossing that boundary.
	 */
	void *tmp;

	tmp = FUNC2(SEEK_BUF);
	if (tmp == NULL) {
	    errno = ENOMEM;
	    return (-1);
	}

	nread = 0;
	for (; seek_by > 0; seek_by -= nread) {
	    resid = 0;
	    errno = FUNC5(f, tmp, FUNC3(seek_by, SEEK_BUF), &resid);
	    nread = FUNC3(seek_by, SEEK_BUF) - resid;
	    if ((errno != 0) || (nread == 0))
		/* Error or EOF */
		break;
	}
	FUNC0(tmp);
	if (errno != 0)
	    return (-1);
    }

    if (seek_by != 0) {
	/* Seek backward or seek past the boundary of the last slice */
	if (sf->file_pos + seek_by < 0)
	    FUNC4("splitfs_seek: can't seek past the beginning of the slice");
	new_pos = FUNC1(sf->curfd, seek_by, SEEK_CUR);
	if (new_pos < 0) {
	    errno = EINVAL;
	    return (-1);
	}
	sf->tot_pos += new_pos - sf->file_pos;
	sf->file_pos = new_pos;
    }

    return (sf->tot_pos);
}