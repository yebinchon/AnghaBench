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
struct ssh {int dummy; } ;

/* Variables and functions */
 struct sshbuf* FUNC0 (struct ssh*) ; 
 size_t FUNC1 (struct sshbuf*) ; 
 int /*<<< orphan*/  const* FUNC2 (struct sshbuf*) ; 

const u_char *
FUNC3(struct ssh *ssh, size_t *len)
{
	struct sshbuf *output = FUNC0(ssh);

	*len = FUNC1(output);
	return FUNC2(output);
}