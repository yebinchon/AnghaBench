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
struct flock {int /*<<< orphan*/  l_whence; int /*<<< orphan*/  l_type; scalar_t__ l_len; scalar_t__ l_start; } ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
#define  EINVAL 128 
 int /*<<< orphan*/  F_SETLKW ; 
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/  LOCK_UN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct flock*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 

int
FUNC5(krb5_context context, int fd)
{
    int ret;
#ifdef HAVE_FCNTL
    struct flock l;
    l.l_start = 0;
    l.l_len = 0;
    l.l_type = F_UNLCK;
    l.l_whence = SEEK_SET;
    ret = fcntl(fd, F_SETLKW, &l);
#else
    ret = FUNC2(fd, LOCK_UN);
#endif
    if (ret < 0)
	ret = errno;
    switch (ret) {
    case 0:
	break;
    case EINVAL: /* filesystem doesn't support locking, let the user have it */
	ret = 0;
	break;
    default: {
	char buf[128];
	FUNC4(ret, buf, sizeof(buf));
	FUNC3(context, ret,
			       FUNC0("Failed to unlock file: %s", ""), buf);
	break;
    }
    }
    return ret;
}