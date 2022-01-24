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
struct bitmap {int dummy; } ;

/* Variables and functions */
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 size_t FUNC0 (struct bitmap*) ; 
 scalar_t__ FUNC1 (struct bitmap*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 
 int FUNC4 (struct sshbuf*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC5(struct sshbuf *buf, struct bitmap *bitmap)
{
	size_t len;
	u_char *blob;
	int r;

	len = FUNC0(bitmap);
	if ((blob = FUNC3(len)) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	if (FUNC1(bitmap, blob, len) != 0) {
		FUNC2(blob);
		return SSH_ERR_INTERNAL_ERROR;
	}
	r = FUNC4(buf, blob, len);
	FUNC2(blob);
	return r;
}