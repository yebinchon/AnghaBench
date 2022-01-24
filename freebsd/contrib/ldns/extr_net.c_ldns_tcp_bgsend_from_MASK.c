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
struct timeval {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct sockaddr_storage const*,int /*<<< orphan*/ ,struct sockaddr_storage const*,int /*<<< orphan*/ ,struct timeval) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,struct sockaddr_storage const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(ldns_buffer *qbin,
		const struct sockaddr_storage *to, socklen_t tolen, 
	       	const struct sockaddr_storage *from, socklen_t fromlen,
		struct timeval timeout)
{
	int sockfd;
	
	sockfd = FUNC1(to, tolen, from, fromlen, timeout);
	
	if (sockfd == 0) {
		return 0;
	}
	
	if (FUNC2(qbin, sockfd, to, tolen) == 0) {
		FUNC0(sockfd);
		return 0;
	}
	
	return sockfd;
}