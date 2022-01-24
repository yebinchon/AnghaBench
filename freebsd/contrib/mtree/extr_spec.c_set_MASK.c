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
typedef  void* uid_t ;
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  nlink_t ;
typedef  void* gid_t ;
struct TYPE_4__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/ * sha512digest; int /*<<< orphan*/ * sha384digest; int /*<<< orphan*/ * sha256digest; void* st_uid; int /*<<< orphan*/  type; TYPE_1__ st_mtimespec; int /*<<< orphan*/ * tags; int /*<<< orphan*/ * slink; int /*<<< orphan*/  st_size; int /*<<< orphan*/ * sha1digest; int /*<<< orphan*/ * rmd160digest; int /*<<< orphan*/  st_nlink; int /*<<< orphan*/  st_mode; int /*<<< orphan*/ * md5digest; void* st_gid; int /*<<< orphan*/  st_flags; int /*<<< orphan*/  st_rdev; int /*<<< orphan*/  cksum; } ;
typedef  TYPE_2__ NODE ;

/* Variables and functions */
#define  F_CKSUM 147 
#define  F_DEV 146 
#define  F_FLAGS 145 
#define  F_GID 144 
#define  F_GNAME 143 
#define  F_MD5 142 
#define  F_MODE 141 
#define  F_NLINK 140 
#define  F_RMD160 139 
#define  F_SHA1 138 
#define  F_SHA256 137 
#define  F_SHA384 136 
#define  F_SHA512 135 
#define  F_SIZE 134 
#define  F_SLINK 133 
#define  F_TAGS 132 
#define  F_TIME 131 
#define  F_TYPE 130 
#define  F_UID 129 
#define  F_UNAME 128 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,void**) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  mtree_Wflag ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 void* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,char*,char*) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 void* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (char**,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,char**,int) ; 
 int FUNC19 (int /*<<< orphan*/ *,char*) ; 
 int FUNC20 (char*,void**) ; 

__attribute__((used)) static void
FUNC21(char *t, NODE *ip)
{
	int	type, value, len;
	gid_t	gid;
	uid_t	uid;
	char	*kw, *val, *md, *ep;
	void	*m;

	while ((kw = FUNC15(&t, "= \t")) != NULL) {
		if (*kw == '\0')
			continue;
		if (FUNC10(kw, "all") == 0)
			FUNC4("invalid keyword `all'");
		ip->flags |= type = FUNC6(kw, &value);
		if (!value)
			/* Just set flag bit (F_IGN and F_OPT) */
			continue;
		while ((val = FUNC15(&t, " \t")) != NULL && *val == '\0')
			continue;
		if (val == NULL)
			FUNC4("missing value");
		switch (type) {
		case F_CKSUM:
			ip->cksum = FUNC18(val, &ep, 10);
			if (*ep)
				FUNC4("invalid checksum `%s'", val);
			break;
		case F_DEV:
			ip->st_rdev = FUNC5(val);
			break;
		case F_FLAGS:
			if (FUNC10("none", val) == 0)
				ip->st_flags = 0;
			else if (FUNC13(&val, &ip->st_flags, NULL)
			    != 0)
				FUNC4("invalid flag `%s'", val);
			break;
		case F_GID:
			ip->st_gid = (gid_t)FUNC18(val, &ep, 10);
			if (*ep)
				FUNC4("invalid gid `%s'", val);
			break;
		case F_GNAME:
			if (mtree_Wflag)	/* don't parse if whacking */
				break;
			if (FUNC2(val, &gid) == -1)
				FUNC4("unknown group `%s'", val);
			ip->st_gid = gid;
			break;
		case F_MD5:
			if (val[0]=='0' && val[1]=='x')
				md=&val[2];
			else
				md=val;
			if ((ip->md5digest = FUNC11(md)) == NULL)
				FUNC4("memory allocation error");
			break;
		case F_MODE:
			if ((m = FUNC8(val)) == NULL)
				FUNC4("cannot set file mode `%s' (%s)",
				    val, FUNC12(errno));
			ip->st_mode = FUNC1(m, 0);
			FUNC0(m);
			break;
		case F_NLINK:
			ip->st_nlink = (nlink_t)FUNC18(val, &ep, 10);
			if (*ep)
				FUNC4("invalid link count `%s'", val);
			break;
		case F_RMD160:
			if (val[0]=='0' && val[1]=='x')
				md=&val[2];
			else
				md=val;
			if ((ip->rmd160digest = FUNC11(md)) == NULL)
				FUNC4("memory allocation error");
			break;
		case F_SHA1:
			if (val[0]=='0' && val[1]=='x')
				md=&val[2];
			else
				md=val;
			if ((ip->sha1digest = FUNC11(md)) == NULL)
				FUNC4("memory allocation error");
			break;
		case F_SIZE:
			ip->st_size = (off_t)FUNC17(val, &ep, 10);
			if (*ep)
				FUNC4("invalid size `%s'", val);
			break;
		case F_SLINK:
			if ((ip->slink = FUNC11(val)) == NULL)
				FUNC4("memory allocation error");
			if (FUNC19(ip->slink, val) == -1)
				FUNC4("strunvis failed on `%s'", val);
			break;
		case F_TAGS:
			len = FUNC14(val) + 3;	/* "," + str + ",\0" */
			if ((ip->tags = FUNC3(len)) == NULL)
				FUNC4("memory allocation error");
			FUNC9(ip->tags, len, ",%s,", val);
			break;
		case F_TIME:
			ip->st_mtimespec.tv_sec =
			    (time_t)FUNC17(val, &ep, 10);
			if (*ep != '.')
				FUNC4("invalid time `%s'", val);
			val = ep + 1;
			ip->st_mtimespec.tv_nsec = FUNC16(val, &ep, 10);
			if (*ep)
				FUNC4("invalid time `%s'", val);
			break;
		case F_TYPE:
			ip->type = FUNC7(val);
			break;
		case F_UID:
			ip->st_uid = (uid_t)FUNC18(val, &ep, 10);
			if (*ep)
				FUNC4("invalid uid `%s'", val);
			break;
		case F_UNAME:
			if (mtree_Wflag)	/* don't parse if whacking */
				break;
			if (FUNC20(val, &uid) == -1)
				FUNC4("unknown user `%s'", val);
			ip->st_uid = uid;
			break;
		case F_SHA256:
			if (val[0]=='0' && val[1]=='x')
				md=&val[2];
			else
				md=val;
			if ((ip->sha256digest = FUNC11(md)) == NULL)
				FUNC4("memory allocation error");
			break;
		case F_SHA384:
			if (val[0]=='0' && val[1]=='x')
				md=&val[2];
			else
				md=val;
			if ((ip->sha384digest = FUNC11(md)) == NULL)
				FUNC4("memory allocation error");
			break;
		case F_SHA512:
			if (val[0]=='0' && val[1]=='x')
				md=&val[2];
			else
				md=val;
			if ((ip->sha512digest = FUNC11(md)) == NULL)
				FUNC4("memory allocation error");
			break;
		default:
			FUNC4(
			    "set(): unsupported key type 0x%x (INTERNAL ERROR)",
			    type);
			/* NOTREACHED */
		}
	}
}