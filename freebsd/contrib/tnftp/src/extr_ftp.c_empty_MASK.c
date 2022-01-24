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
struct pollfd {int events; int revents; void* fd; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int POLLIN ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct pollfd*,int,int) ; 

__attribute__((used)) static int
FUNC2(FILE *ecin, FILE *din, int sec)
{
	int		nr, nfd;
	struct pollfd	pfd[2];

	nfd = 0;
	if (ecin) {
		pfd[nfd].fd = FUNC0(ecin);
		pfd[nfd++].events = POLLIN;
	}

	if (din) {
		pfd[nfd].fd = FUNC0(din);
		pfd[nfd++].events = POLLIN;
	}

	if ((nr = FUNC1(pfd, nfd, sec * 1000)) <= 0)
		return nr;

	nr = 0;
	nfd = 0;
	if (ecin)
		nr |= (pfd[nfd++].revents & POLLIN) ? 1 : 0;
	if (din)
		nr |= (pfd[nfd++].revents & POLLIN) ? 2 : 0;
	return nr;
}