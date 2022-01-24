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
struct httpio {size_t bufsize; char* buf; } ;

/* Variables and functions */
 char* FUNC0 (char*,size_t) ; 

__attribute__((used)) static inline int
FUNC1(struct httpio *io, size_t len)
{
	char *tmp;

	if (io->bufsize >= len)
		return (0);

	if ((tmp = FUNC0(io->buf, len)) == NULL)
		return (-1);
	io->buf = tmp;
	io->bufsize = len;
	return (0);
}