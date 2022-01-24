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
struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sshbuf* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sshbuf*,char*,struct sshkey**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sshkey *
FUNC4(const char *n)
{
	struct sshbuf *b;
	struct sshkey *ret;

	b = FUNC1(n);
	FUNC0(FUNC3(b, "", &ret, NULL), 0);
	FUNC2(b);
	return ret;
}