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
struct sshbuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sshbuf*) ; 
 struct sshbuf* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sshbuf*) ; 
 scalar_t__ FUNC5 (struct sshbuf*,struct sshbuf*) ; 

struct sshbuf *
FUNC6(struct sshbuf *buf)
{
	struct sshbuf *ret;

	if (FUNC0(buf) != 0)
		return NULL;
	if ((ret = FUNC2(FUNC4(buf), FUNC3(buf))) == NULL)
		return NULL;
	if (FUNC5(ret, buf) != 0) {
		FUNC1(ret);
		return NULL;
	}
	return ret;
}