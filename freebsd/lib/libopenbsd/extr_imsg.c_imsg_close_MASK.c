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
typedef  scalar_t__ u_int16_t ;
struct imsgbuf {int /*<<< orphan*/  w; } ;
struct imsg_hdr {scalar_t__ len; int /*<<< orphan*/  flags; } ;
struct ibuf {int fd; scalar_t__ wpos; scalar_t__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMSGF_HASFD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ibuf*) ; 

void
FUNC1(struct imsgbuf *ibuf, struct ibuf *msg)
{
	struct imsg_hdr	*hdr;

	hdr = (struct imsg_hdr *)msg->buf;

	hdr->flags &= ~IMSGF_HASFD;
	if (msg->fd != -1)
		hdr->flags |= IMSGF_HASFD;

	hdr->len = (u_int16_t)msg->wpos;

	FUNC0(&ibuf->w, msg);
}