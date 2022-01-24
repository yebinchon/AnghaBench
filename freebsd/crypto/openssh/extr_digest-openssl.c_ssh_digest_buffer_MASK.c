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
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct sshbuf const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sshbuf const*) ; 

int
FUNC3(int alg, const struct sshbuf *b, u_char *d, size_t dlen)
{
	return FUNC0(alg, FUNC2(b), FUNC1(b), d, dlen);
}