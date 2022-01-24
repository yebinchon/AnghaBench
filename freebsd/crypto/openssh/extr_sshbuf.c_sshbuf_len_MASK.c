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
struct sshbuf {size_t size; size_t off; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sshbuf const*) ; 

size_t
FUNC1(const struct sshbuf *buf)
{
	if (FUNC0(buf) != 0)
		return 0;
	return buf->size - buf->off;
}