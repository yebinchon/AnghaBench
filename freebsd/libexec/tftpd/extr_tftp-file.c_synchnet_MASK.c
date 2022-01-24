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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  rbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FIONREAD ; 
 int MAXPKTSIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 

int
FUNC2(int peer)			/* socket to flush */
{
	int i, j = 0;
	char rbuf[MAXPKTSIZE];
	struct sockaddr_storage from;
	socklen_t fromlen;

	while (1) {
		(void) FUNC0(peer, FIONREAD, &i);
		if (i) {
			j++;
			fromlen = sizeof from;
			(void) FUNC1(peer, rbuf, sizeof (rbuf), 0,
				(struct sockaddr *)&from, &fromlen);
		} else {
			return(j);
		}
	}
}