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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,void*,size_t,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 

ssize_t
FUNC3(ldns_buffer *qbin, int sockfd, const struct sockaddr_storage *to, 
		socklen_t tolen)
{
	ssize_t bytes;

	bytes = FUNC2(sockfd, (void*)FUNC0(qbin),
			FUNC1(qbin), 0, (struct sockaddr *)to, tolen);

	if (bytes == -1 || (size_t)bytes != FUNC1(qbin)) {
		return 0;
	}
	if ((size_t) bytes != FUNC1(qbin)) {
		return 0;
	}
	return bytes;
}