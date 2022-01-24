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
struct evbuffer {int /*<<< orphan*/  off; int /*<<< orphan*/  buffer; } ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct evbuffer *buffer, int fd)
{
	int n;
#ifdef WIN32
	DWORD dwBytesWritten;
#endif

#ifndef WIN32
	n = FUNC2(fd, buffer->buffer, buffer->off);
	if (n == -1)
		return (-1);
	if (n == 0)
		return (0);
#else
	n = WriteFile((HANDLE)fd, buffer->buffer, buffer->off, &dwBytesWritten, NULL);
	if (n == 0)
		return (-1);
	if (dwBytesWritten == 0)
		return (0);
	n = dwBytesWritten;
#endif
	FUNC1(buffer, n);

	return (n);
}