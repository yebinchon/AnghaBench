#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
struct acl {int acl_cnt; TYPE_1__* acl_entry; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int acl_tag_t ;
typedef  TYPE_2__* acl_t ;
typedef  int acl_perm_t ;
struct TYPE_5__ {struct acl ats_acl; } ;
struct TYPE_4__ {scalar_t__ ae_tag; int ae_perm; int /*<<< orphan*/  ae_id; } ;

/* Variables and functions */
#define  ACL_GROUP 133 
#define  ACL_GROUP_OBJ 132 
#define  ACL_MASK 131 
#define  ACL_OTHER 130 
 int ACL_PERM_BITS ; 
#define  ACL_USER 129 
#define  ACL_USER_OBJ 128 
 int /*<<< orphan*/  EINVAL ; 
 int MAXLOGNAME ; 
 int /*<<< orphan*/  _POSIX1E_ACL_STRING_PERM_MAXSIZE ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int,char*,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char**,char*,char*,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static char *
FUNC6(acl_t acl, ssize_t *len_p, int flags)
{
	struct acl	*acl_int;
	char		*buf, *tmpbuf;
	char		 name_buf[MAXLOGNAME];
	char		 perm_buf[_POSIX1E_ACL_STRING_PERM_MAXSIZE+1],
			 effective_perm_buf[_POSIX1E_ACL_STRING_PERM_MAXSIZE+1];
	int		 i, error, len;
	uid_t		 ae_id;
	acl_tag_t	 ae_tag;
	acl_perm_t	 ae_perm, effective_perm, mask_perm;

	buf = FUNC4("");
	if (buf == NULL)
		return(NULL);

	acl_int = &acl->ats_acl;

	mask_perm = ACL_PERM_BITS;	/* effective is regular if no mask */
	for (i = 0; i < acl_int->acl_cnt; i++)
		if (acl_int->acl_entry[i].ae_tag == ACL_MASK) 
			mask_perm = acl_int->acl_entry[i].ae_perm;

	for (i = 0; i < acl_int->acl_cnt; i++) {
		ae_tag = acl_int->acl_entry[i].ae_tag;
		ae_id = acl_int->acl_entry[i].ae_id;
		ae_perm = acl_int->acl_entry[i].ae_perm;

		switch(ae_tag) {
		case ACL_USER_OBJ:
			error = FUNC1(ae_perm,
			    _POSIX1E_ACL_STRING_PERM_MAXSIZE+1, perm_buf);
			if (error)
				goto error_label;
			len = FUNC2(&tmpbuf, "%suser::%s\n", buf,
			    perm_buf);
			if (len == -1)
				goto error_label;
			FUNC3(buf);
			buf = tmpbuf;
			break;

		case ACL_USER:
			error = FUNC1(ae_perm,
			    _POSIX1E_ACL_STRING_PERM_MAXSIZE+1, perm_buf);
			if (error)
				goto error_label;

			error = FUNC0(ae_tag, ae_id,
			    MAXLOGNAME, name_buf, flags);
			if (error)
				goto error_label;

			effective_perm = ae_perm & mask_perm;
			if (effective_perm != ae_perm) {
				error = FUNC1(
				    effective_perm,
				    _POSIX1E_ACL_STRING_PERM_MAXSIZE+1,
				    effective_perm_buf);
				if (error)
					goto error_label;
				len = FUNC2(&tmpbuf, "%suser:%s:%s\t\t# "
				    "effective: %s\n",
				    buf, name_buf, perm_buf,
				    effective_perm_buf);
			} else {
				len = FUNC2(&tmpbuf, "%suser:%s:%s\n", buf,
				    name_buf, perm_buf);
			}
			if (len == -1)
				goto error_label;
			FUNC3(buf);
			buf = tmpbuf;
			break;

		case ACL_GROUP_OBJ:
			error = FUNC1(ae_perm,
			    _POSIX1E_ACL_STRING_PERM_MAXSIZE+1, perm_buf);
			if (error)
				goto error_label;

			effective_perm = ae_perm & mask_perm;
			if (effective_perm != ae_perm) {
				error = FUNC1(
				    effective_perm,
				    _POSIX1E_ACL_STRING_PERM_MAXSIZE+1,
				    effective_perm_buf);
				if (error)
					goto error_label;
				len = FUNC2(&tmpbuf, "%sgroup::%s\t\t# "
				    "effective: %s\n",
				    buf, perm_buf, effective_perm_buf);
			} else {
				len = FUNC2(&tmpbuf, "%sgroup::%s\n", buf,
				    perm_buf);
			}
			if (len == -1)
				goto error_label;
			FUNC3(buf);
			buf = tmpbuf;
			break;

		case ACL_GROUP:
			error = FUNC1(ae_perm,
			    _POSIX1E_ACL_STRING_PERM_MAXSIZE+1, perm_buf);
			if (error)
				goto error_label;

			error = FUNC0(ae_tag, ae_id,
			    MAXLOGNAME, name_buf, flags);
			if (error)
				goto error_label;

			effective_perm = ae_perm & mask_perm;
			if (effective_perm != ae_perm) {
				error = FUNC1(
				    effective_perm,
				    _POSIX1E_ACL_STRING_PERM_MAXSIZE+1,
				    effective_perm_buf);
				if (error)
					goto error_label;
				len = FUNC2(&tmpbuf, "%sgroup:%s:%s\t\t# "
				    "effective: %s\n",
				    buf, name_buf, perm_buf,
				    effective_perm_buf);
			} else {
				len = FUNC2(&tmpbuf, "%sgroup:%s:%s\n", buf,
				    name_buf, perm_buf);
			}
			if (len == -1)
				goto error_label;
			FUNC3(buf);
			buf = tmpbuf;
			break;

		case ACL_MASK:
			error = FUNC1(ae_perm,
			    _POSIX1E_ACL_STRING_PERM_MAXSIZE+1, perm_buf);
			if (error)
				goto error_label;

			len = FUNC2(&tmpbuf, "%smask::%s\n", buf,
			    perm_buf);
			if (len == -1)
				goto error_label;
			FUNC3(buf);
			buf = tmpbuf;
			break;

		case ACL_OTHER:
			error = FUNC1(ae_perm,
			    _POSIX1E_ACL_STRING_PERM_MAXSIZE+1, perm_buf);
			if (error)
				goto error_label;

			len = FUNC2(&tmpbuf, "%sother::%s\n", buf,
			    perm_buf);
			if (len == -1)
				goto error_label;
			FUNC3(buf);
			buf = tmpbuf;
			break;

		default:
			errno = EINVAL;
			goto error_label;
		}
	}

	if (len_p) {
		*len_p = FUNC5(buf);
	}
	return (buf);

error_label:
	/* jump to here sets errno already, we just clean up */
	if (buf) FUNC3(buf);
	return (NULL);
}