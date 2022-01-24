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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct sockaddr* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sockaddr **dst, socklen_t *dst_len,
			  struct sockaddr *src, socklen_t src_len)
{
	*dst = FUNC1(src_len);
	if (!(*dst))
		return FUNC0(ENOMEM);

	FUNC2(*dst, src, src_len);
	*dst_len = src_len;
	return 0;
}