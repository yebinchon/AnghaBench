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
struct stat {int st_size; } ;
struct open_file {scalar_t__ f_fsdata; } ;
struct file {int f_seekp; } ;
typedef  int off_t ;

/* Variables and functions */
 int EINVAL ; 
#define  SEEK_CUR 130 
#define  SEEK_END 129 
#define  SEEK_SET 128 
 int errno ; 
 int FUNC0 (struct open_file*,struct stat*) ; 

__attribute__((used)) static off_t
FUNC1(struct open_file *f, off_t offset, int where)
{
	struct file *fp = (struct file *)f->f_fsdata;

	switch (where) {
	case SEEK_SET:
		fp->f_seekp = offset;
		break;
	case SEEK_CUR:
		fp->f_seekp += offset;
		break;
	case SEEK_END:
	    {
		struct stat sb;
		int error;

		error = FUNC0(f, &sb);
		if (error != 0) {
			errno = error;
			return (-1);
		}
		fp->f_seekp = sb.st_size - offset;
		break;
	    }
	default:
		errno = EINVAL;
		return (-1);
	}
	return (fp->f_seekp);
}