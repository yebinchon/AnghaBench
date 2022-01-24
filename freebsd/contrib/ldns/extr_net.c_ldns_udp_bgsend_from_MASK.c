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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int FUNC0 (int,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct sockaddr_storage const*,struct timeval) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,struct sockaddr_storage const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(ldns_buffer *qbin,
		const struct sockaddr_storage *to  , socklen_t tolen, 
		const struct sockaddr_storage *from, socklen_t fromlen, 
		struct timeval timeout)
{
	int sockfd;

	sockfd = FUNC2(to, timeout);

	if (sockfd == 0) {
		return 0;
	}

	if (from && FUNC0(sockfd, (const struct sockaddr*)from, fromlen) == -1){
		return 0;
	}

	if (FUNC3(qbin, sockfd, to, tolen) == 0) {
		FUNC1(sockfd);
		return 0;
	}
	return sockfd;
}