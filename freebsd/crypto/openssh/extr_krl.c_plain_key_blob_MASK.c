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
struct sshkey {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sshkey*) ; 
 int /*<<< orphan*/  FUNC1 (struct sshkey*) ; 
 int FUNC2 (struct sshkey const*,struct sshkey**) ; 
 scalar_t__ FUNC3 (struct sshkey*) ; 
 int FUNC4 (struct sshkey*,int /*<<< orphan*/ **,size_t*) ; 

__attribute__((used)) static int
FUNC5(const struct sshkey *key, u_char **blob, size_t *blen)
{
	struct sshkey *kcopy;
	int r;

	if ((r = FUNC2(key, &kcopy)) != 0)
		return r;
	if (FUNC3(kcopy)) {
		if ((r = FUNC0(kcopy)) != 0) {
			FUNC1(kcopy);
			return r;
		}
	}
	r = FUNC4(kcopy, blob, blen);
	FUNC1(kcopy);
	return r;
}