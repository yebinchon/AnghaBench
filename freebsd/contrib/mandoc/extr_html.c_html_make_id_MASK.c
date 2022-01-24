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
struct roff_node {scalar_t__ type; struct roff_node* next; struct roff_node* child; } ;

/* Variables and functions */
 scalar_t__ ROFFT_TEXT ; 
 int /*<<< orphan*/  FUNC0 (char**,struct roff_node const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  id_unique ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (char**,char*,char*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int,char*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char) ; 

char *
FUNC8(const struct roff_node *n, int unique)
{
	const struct roff_node	*nch;
	char			*buf, *bufs, *cp;
	unsigned int		 slot;
	int			 suffix;

	for (nch = n->child; nch != NULL; nch = nch->next)
		if (nch->type != ROFFT_TEXT)
			return NULL;

	buf = NULL;
	FUNC0(&buf, n);
	if (buf == NULL)
		return NULL;

	/*
	 * In ID attributes, only use ASCII characters that are
	 * permitted in URL-fragment strings according to the
	 * explicit list at:
	 * https://url.spec.whatwg.org/#url-fragment-string
	 */

	for (cp = buf; *cp != '\0'; cp++)
		if (FUNC2((unsigned char)*cp) == 0 &&
		    FUNC7("!$&'()*+,-./:;=?@_~", *cp) == NULL)
			*cp = '_';

	if (unique == 0)
		return buf;

	/* Avoid duplicate HTML id= attributes. */

	bufs = NULL;
	suffix = 1;
	slot = FUNC6(&id_unique, buf);
	cp = FUNC4(&id_unique, slot);
	if (cp != NULL) {
		while (cp != NULL) {
			FUNC1(bufs);
			if (++suffix > 127) {
				FUNC1(buf);
				return NULL;
			}
			FUNC3(&bufs, "%s_%d", buf, suffix);
			slot = FUNC6(&id_unique, bufs);
			cp = FUNC4(&id_unique, slot);
		}
		FUNC1(buf);
		buf = bufs;
	}
	FUNC5(&id_unique, slot, buf);
	return buf;
}