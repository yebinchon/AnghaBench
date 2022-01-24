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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int SSHBUF_SIZE_MAX ; 
 int SSH_ERR_NO_BUFFER_SPACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int FUNC3 (struct sshbuf*,size_t,int /*<<< orphan*/ **) ; 

int
FUNC4(struct sshbuf *buf, const void *v, size_t len)
{
	u_char *d;
	int r;

	if (len > SSHBUF_SIZE_MAX - 4) {
		FUNC1(("SSH_ERR_NO_BUFFER_SPACE"));
		return SSH_ERR_NO_BUFFER_SPACE;
	}
	if ((r = FUNC3(buf, len + 4, &d)) < 0)
		return r;
	FUNC0(d, len);
	if (len != 0)
		FUNC2(d + 4, v, len);
	return 0;
}