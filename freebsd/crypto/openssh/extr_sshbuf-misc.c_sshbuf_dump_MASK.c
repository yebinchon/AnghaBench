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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct sshbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sshbuf*) ; 

void
FUNC4(struct sshbuf *buf, FILE *f)
{
	FUNC0(f, "buffer %p len = %zu\n", buf, FUNC2(buf));
	FUNC1(FUNC3(buf), FUNC2(buf), f);
}