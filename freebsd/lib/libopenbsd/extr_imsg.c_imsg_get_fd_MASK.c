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
struct imsgbuf {int /*<<< orphan*/  fds; } ;
struct imsg_fd {int fd; } ;

/* Variables and functions */
 struct imsg_fd* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct imsg_fd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC2 (struct imsg_fd*) ; 

int
FUNC3(struct imsgbuf *ibuf)
{
	int		 fd;
	struct imsg_fd	*ifd;

	if ((ifd = FUNC0(&ibuf->fds)) == NULL)
		return (-1);

	fd = ifd->fd;
	FUNC1(&ibuf->fds, ifd, entry);
	FUNC2(ifd);

	return (fd);
}