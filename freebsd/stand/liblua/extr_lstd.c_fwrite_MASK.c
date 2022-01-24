#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_3__ {int offset; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,void const*,size_t) ; 

size_t
FUNC1(const void *ptr, size_t size, size_t count, FILE *stream)
{
	ssize_t w;

	if (stream == NULL || ptr == NULL)
		return (0);
	w = FUNC0(stream->fd, ptr, size * count);
	if (w == -1)
		return (0);

	stream->offset += w;
	return ((size_t)w);
}