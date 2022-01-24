#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int perm; int /*<<< orphan*/  c; } ;
struct TYPE_3__ {int perm; int /*<<< orphan*/  c; } ;

/* Variables and functions */
#define  ARCHIVE_ENTRY_ACL_EVERYONE 138 
#define  ARCHIVE_ENTRY_ACL_GROUP 137 
#define  ARCHIVE_ENTRY_ACL_GROUP_OBJ 136 
#define  ARCHIVE_ENTRY_ACL_MASK 135 
#define  ARCHIVE_ENTRY_ACL_OTHER 134 
 int ARCHIVE_ENTRY_ACL_STYLE_COMPACT ; 
 int ARCHIVE_ENTRY_ACL_STYLE_SOLARIS ; 
#define  ARCHIVE_ENTRY_ACL_TYPE_ALARM 133 
#define  ARCHIVE_ENTRY_ACL_TYPE_ALLOW 132 
#define  ARCHIVE_ENTRY_ACL_TYPE_AUDIT 131 
#define  ARCHIVE_ENTRY_ACL_TYPE_DENY 130 
 int ARCHIVE_ENTRY_ACL_TYPE_NFS4 ; 
 int ARCHIVE_ENTRY_ACL_TYPE_POSIX1E ; 
#define  ARCHIVE_ENTRY_ACL_USER 129 
#define  ARCHIVE_ENTRY_ACL_USER_OBJ 128 
 int /*<<< orphan*/  FUNC0 (char**,int) ; 
 TYPE_2__* nfsv4_acl_flag_map ; 
 int nfsv4_acl_flag_map_size ; 
 TYPE_1__* nfsv4_acl_perm_map ; 
 int nfsv4_acl_perm_map_size ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(char **p, const char *prefix, int type,
    int tag, int flags, const char *name, int perm, int id)
{
	int i;

	if (prefix != NULL) {
		FUNC1(*p, prefix);
		*p += FUNC2(*p);
	}
	switch (tag) {
	case ARCHIVE_ENTRY_ACL_USER_OBJ:
		name = NULL;
		id = -1;
		if ((type & ARCHIVE_ENTRY_ACL_TYPE_NFS4) != 0) {
			FUNC1(*p, "owner@");
			break;
		}
		/* FALLTHROUGH */
	case ARCHIVE_ENTRY_ACL_USER:
		FUNC1(*p, "user");
		break;
	case ARCHIVE_ENTRY_ACL_GROUP_OBJ:
		name = NULL;
		id = -1;
		if ((type & ARCHIVE_ENTRY_ACL_TYPE_NFS4) != 0) {
			FUNC1(*p, "group@");
			break;
		}
		/* FALLTHROUGH */
	case ARCHIVE_ENTRY_ACL_GROUP:
		FUNC1(*p, "group");
		break;
	case ARCHIVE_ENTRY_ACL_MASK:
		FUNC1(*p, "mask");
		name = NULL;
		id = -1;
		break;
	case ARCHIVE_ENTRY_ACL_OTHER:
		FUNC1(*p, "other");
		name = NULL;
		id = -1;
		break;
	case ARCHIVE_ENTRY_ACL_EVERYONE:
		FUNC1(*p, "everyone@");
		name = NULL;
		id = -1;
		break;
	}
	*p += FUNC2(*p);
	*(*p)++ = ':';
	if (((type & ARCHIVE_ENTRY_ACL_TYPE_POSIX1E) != 0) ||
	    tag == ARCHIVE_ENTRY_ACL_USER ||
	    tag == ARCHIVE_ENTRY_ACL_GROUP) {
		if (name != NULL) {
			FUNC1(*p, name);
			*p += FUNC2(*p);
		} else if (tag == ARCHIVE_ENTRY_ACL_USER
		    || tag == ARCHIVE_ENTRY_ACL_GROUP) {
			FUNC0(p, id);
			if ((type & ARCHIVE_ENTRY_ACL_TYPE_NFS4) == 0)
				id = -1;
		}
		/* Solaris style has no second colon after other and mask */
		if (((flags & ARCHIVE_ENTRY_ACL_STYLE_SOLARIS) == 0)
		    || (tag != ARCHIVE_ENTRY_ACL_OTHER
		    && tag != ARCHIVE_ENTRY_ACL_MASK))
			*(*p)++ = ':';
	}
	if ((type & ARCHIVE_ENTRY_ACL_TYPE_POSIX1E) != 0) {
		/* POSIX.1e ACL perms */
		*(*p)++ = (perm & 0444) ? 'r' : '-';
		*(*p)++ = (perm & 0222) ? 'w' : '-';
		*(*p)++ = (perm & 0111) ? 'x' : '-';
	} else {
		/* NFSv4 ACL perms */
		for (i = 0; i < nfsv4_acl_perm_map_size; i++) {
			if (perm & nfsv4_acl_perm_map[i].perm)
				*(*p)++ = nfsv4_acl_perm_map[i].c;
			else if ((flags & ARCHIVE_ENTRY_ACL_STYLE_COMPACT) == 0)
				*(*p)++ = '-';
		}
		*(*p)++ = ':';
		for (i = 0; i < nfsv4_acl_flag_map_size; i++) {
			if (perm & nfsv4_acl_flag_map[i].perm)
				*(*p)++ = nfsv4_acl_flag_map[i].c;
			else if ((flags & ARCHIVE_ENTRY_ACL_STYLE_COMPACT) == 0)
				*(*p)++ = '-';
		}
		*(*p)++ = ':';
		switch (type) {
		case ARCHIVE_ENTRY_ACL_TYPE_ALLOW:
			FUNC1(*p, "allow");
			break;
		case ARCHIVE_ENTRY_ACL_TYPE_DENY:
			FUNC1(*p, "deny");
			break;
		case ARCHIVE_ENTRY_ACL_TYPE_AUDIT:
			FUNC1(*p, "audit");
			break;
		case ARCHIVE_ENTRY_ACL_TYPE_ALARM:
			FUNC1(*p, "alarm");
			break;
		}
		*p += FUNC2(*p);
	}
	if (id != -1) {
		*(*p)++ = ':';
		FUNC0(p, id);
	}
}