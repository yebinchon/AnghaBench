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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int sendbuf ; 
 int FUNC6 (int,void*,int,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int uint8_t ; 

ssize_t
FUNC7(ldns_buffer *qbin, int sockfd, 
                    const struct sockaddr_storage *to, socklen_t tolen)
{
	uint8_t *sendbuf;
	ssize_t bytes;

	/* add length of packet */
	sendbuf = FUNC1(uint8_t, FUNC3(qbin) + 2);
	if(!sendbuf) return 0;
	FUNC4(sendbuf, FUNC3(qbin));
	FUNC5(sendbuf + 2, FUNC2(qbin), FUNC3(qbin));

	bytes = FUNC6(sockfd, (void*)sendbuf,
			FUNC3(qbin) + 2, 0, (struct sockaddr *)to, tolen);

        FUNC0(sendbuf);

	if (bytes == -1 || (size_t) bytes != FUNC3(qbin) + 2 ) {
		return 0;
	}
	return bytes;
}