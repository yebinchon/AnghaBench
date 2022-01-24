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
typedef  int /*<<< orphan*/  u_char ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (struct sshbuf*,int /*<<< orphan*/ **,size_t*) ; 

__attribute__((used)) static int
FUNC3(struct sshbuf *queue, int *hp)
{
	u_char *handle;
	int r;
	size_t hlen;

	*hp = -1;
	if ((r = FUNC2(queue, &handle, &hlen)) != 0)
		return r;
	if (hlen < 256)
		*hp = FUNC1(handle, hlen);
	FUNC0(handle);
	return 0;
}