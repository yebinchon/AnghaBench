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
struct stat {int dummy; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  MDX_CTX ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,unsigned char*,scalar_t__) ; 

char *
FUNC5(int fd, char *buf, off_t ofs, off_t len)
{
	unsigned char buffer[16*1024];
	MDX_CTX ctx;
	struct stat stbuf;
	int readrv, e;
	off_t remain;

	if (len < 0) {
		errno = EINVAL;
		return NULL;
	}

	FUNC1(&ctx);
	if (ofs != 0) {
		errno = 0;
		if (FUNC3(fd, ofs, SEEK_SET) != ofs ||
		    (ofs == -1 && errno != 0)) {
			readrv = -1;
			goto error;
		}
	}
	remain = len;
	readrv = 0;
	while (len == 0 || remain > 0) {
		if (len == 0 || remain > sizeof(buffer))
			readrv = FUNC4(fd, buffer, sizeof(buffer));
		else
			readrv = FUNC4(fd, buffer, remain);
		if (readrv <= 0)
			break;
		FUNC2(&ctx, buffer, readrv);
		remain -= readrv;
	}
error:
	if (readrv < 0)
		return NULL;
	return (FUNC0(&ctx, buf));
}