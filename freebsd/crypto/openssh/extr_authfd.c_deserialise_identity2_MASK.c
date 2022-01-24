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
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct sshbuf*,char**,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sshbuf*,int /*<<< orphan*/  const**,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/  const*,size_t,struct sshkey**) ; 

__attribute__((used)) static int
FUNC4(struct sshbuf *ids, struct sshkey **keyp, char **commentp)
{
	int r;
	char *comment = NULL;
	const u_char *blob;
	size_t blen;

	if ((r = FUNC2(ids, &blob, &blen)) != 0 ||
	    (r = FUNC1(ids, &comment, NULL)) != 0)
		goto out;
	if ((r = FUNC3(blob, blen, keyp)) != 0)
		goto out;
	if (commentp != NULL) {
		*commentp = comment;
		comment = NULL;
	}
	r = 0;
 out:
	FUNC0(comment);
	return r;
}