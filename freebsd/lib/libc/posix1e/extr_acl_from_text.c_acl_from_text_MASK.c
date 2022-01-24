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
typedef  int /*<<< orphan*/ * acl_t ;

/* Variables and functions */
#define  ACL_BRAND_NFS4 129 
#define  ACL_BRAND_POSIX 128 
 int ACL_BRAND_UNKNOWN ; 
 void* EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 void* errno ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 char* FUNC12 (char**,char*) ; 

acl_t
FUNC13(const char *buf_p)
{
	acl_t		 acl;
	char		*mybuf_p, *line, *cur, *notcomment, *comment, *entry;
	int		 error;

	/* Local copy we can mess up. */
	mybuf_p = FUNC9(buf_p);
	if (mybuf_p == NULL)
		return(NULL);

	acl = FUNC6(3); /* XXX: WTF, 3? */
	if (acl == NULL) {
		FUNC8(mybuf_p);
		return(NULL);
	}

	/* Outer loop: delimit at \n boundaries. */
	cur = mybuf_p;
	while ((line = FUNC12(&cur, "\n"))) {
		/* Now split the line on the first # to strip out comments. */
		comment = line;
		notcomment = FUNC12(&comment, "#");

		/* Inner loop: delimit at ',' boundaries. */
		while ((entry = FUNC12(&notcomment, ","))) {

			/* Skip empty lines. */
			if (FUNC11(FUNC10(entry)) == 0)
				continue;

			if (FUNC0(acl) == ACL_BRAND_UNKNOWN) {
				if (FUNC4(entry))
					FUNC1(acl, ACL_BRAND_NFS4);
				else
					FUNC1(acl, ACL_BRAND_POSIX);
			}

			switch (FUNC0(acl)) {
			case ACL_BRAND_NFS4:
				error = FUNC2(acl, entry);
				break;

			case ACL_BRAND_POSIX:
				error = FUNC3(acl, entry);
				break;

			default:
				error = EINVAL;
				break;
			}

			if (error)
				goto error_label;
		}
	}

#if 0
	/* XXX Should we only return ACLs valid according to acl_valid? */
	/* Verify validity of the ACL we read in. */
	if (acl_valid(acl) == -1) {
		errno = EINVAL;
		goto error_label;
	}
#endif

	FUNC8(mybuf_p);
	return(acl);

error_label:
	FUNC5(acl);
	FUNC8(mybuf_p);
	return(NULL);
}