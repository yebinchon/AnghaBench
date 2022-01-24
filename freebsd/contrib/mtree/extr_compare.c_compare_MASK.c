#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int u_long ;
typedef  scalar_t__ u_int32_t ;
typedef  void* time_t ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_8__ {void* tv_sec; } ;
struct stat {int st_mode; scalar_t__ st_flags; scalar_t__ st_rdev; int st_uid; int st_gid; scalar_t__ st_nlink; scalar_t__ st_size; int /*<<< orphan*/  st_mtime; TYPE_5__ st_mtimespec; } ;
typedef  int mode_t ;
struct TYPE_7__ {char* fts_accpath; struct stat* fts_statp; } ;
struct TYPE_6__ {int type; int flags; scalar_t__ st_rdev; int st_mode; scalar_t__ st_uid; scalar_t__ st_gid; scalar_t__ st_nlink; scalar_t__ st_size; scalar_t__ st_flags; char const* md5digest; char const* rmd160digest; char const* sha1digest; char const* sha256digest; char const* sha384digest; char const* sha512digest; char* slink; scalar_t__ cksum; TYPE_5__ st_mtimespec; } ;
typedef  TYPE_1__ NODE ;
typedef  TYPE_2__ FTSENT ;

/* Variables and functions */
 int CH_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
#define  F_BLOCK 134 
#define  F_CHAR 133 
 int F_CKSUM ; 
 int F_DEV ; 
#define  F_DIR 132 
#define  F_FIFO 131 
#define  F_FILE 130 
 int F_FLAGS ; 
 scalar_t__ F_FREEBSD9 ; 
 int F_GID ; 
 int F_GNAME ; 
#define  F_LINK 129 
 int F_MD5 ; 
 int F_MODE ; 
 int F_NLINK ; 
 int F_RMD160 ; 
 int F_SHA1 ; 
 int F_SHA256 ; 
 int F_SHA384 ; 
 int F_SHA512 ; 
 int F_SIZE ; 
 int F_SLINK ; 
#define  F_SOCK 128 
 int F_TIME ; 
 int F_UID ; 
 int F_UNAME ; 
 int /*<<< orphan*/  LABEL ; 
 int MBITS ; 
 char* FUNC1 (char*,int /*<<< orphan*/ *) ; 
 char* MD5KEY ; 
 int /*<<< orphan*/  O_RDONLY ; 
 char* FUNC2 (char*,int /*<<< orphan*/ *) ; 
 char* RMD160KEY ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ *) ; 
 char* SHA1KEY ; 
 char* SHA256KEY ; 
 char* FUNC5 (char*,int /*<<< orphan*/ *) ; 
 char* SHA384KEY ; 
 char* FUNC6 (char*,int /*<<< orphan*/ *) ; 
 char* SHA512KEY ; 
 char* FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int SP_FLGS ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct timeval*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 scalar_t__ FUNC17 (int,scalar_t__*,scalar_t__*) ; 
 char* FUNC18 (void**) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC19 (scalar_t__,char*) ; 
 scalar_t__ flavor ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 scalar_t__ iflag ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 scalar_t__ FUNC22 (char*,int) ; 
 int FUNC23 (char*,int,int) ; 
 scalar_t__ lflag ; 
 scalar_t__ mflag ; 
 int FUNC24 (char*,int,scalar_t__) ; 
 scalar_t__ mtree_Wflag ; 
 int FUNC25 (int const) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int FUNC27 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (char*,...) ; 
 char* FUNC29 (char*) ; 
 scalar_t__ FUNC30 (char const*,char*) ; 
 char* FUNC31 (int /*<<< orphan*/ ) ; 
 int FUNC32 (char*,char*) ; 
 scalar_t__ tflag ; 
 scalar_t__ uflag ; 
 int FUNC33 (char*) ; 
 scalar_t__ FUNC34 (char*,struct timeval*) ; 

int
FUNC35(NODE *s, FTSENT *p)
{
	u_int32_t len, val, flags;
	int fd, label;
	const char *cp, *tab;
#if !defined(NO_MD5) || !defined(NO_RMD160) || !defined(NO_SHA1) || !defined(NO_SHA2)
	char *digestbuf;
#endif

	tab = NULL;
	label = 0;
	switch(s->type) {
	case F_BLOCK:
		if (!FUNC8(p->fts_statp->st_mode))
			goto typeerr;
		break;
	case F_CHAR:
		if (!FUNC9(p->fts_statp->st_mode))
			goto typeerr;
		break;
	case F_DIR:
		if (!FUNC10(p->fts_statp->st_mode))
			goto typeerr;
		break;
	case F_FIFO:
		if (!FUNC11(p->fts_statp->st_mode))
			goto typeerr;
		break;
	case F_FILE:
		if (!FUNC13(p->fts_statp->st_mode))
			goto typeerr;
		break;
	case F_LINK:
		if (!FUNC12(p->fts_statp->st_mode))
			goto typeerr;
		break;
#ifdef S_ISSOCK
	case F_SOCK:
		if (!S_ISSOCK(p->fts_statp->st_mode))
			goto typeerr;
		break;
#endif
typeerr:		LABEL;
		FUNC28(flavor == F_FREEBSD9 ?
		    "\ttype expected %s found %s\n" : "\ttype (%s, %s)\n",
		    FUNC26(s->type), FUNC21(p->fts_statp->st_mode));
		return (label);
	}
	if (mtree_Wflag)
		goto afterpermwhack;
#if HAVE_STRUCT_STAT_ST_FLAGS
	if (iflag && !uflag) {
		if (s->flags & F_FLAGS)
		    SETFLAGS(p->fts_statp->st_flags, SP_FLGS);
		return (label);
        }
	if (mflag && !uflag) {
		if (s->flags & F_FLAGS)
		    CLEARFLAGS(p->fts_statp->st_flags, SP_FLGS);
		return (label);
        }
#endif
	if (s->flags & F_DEV &&
	    (s->type == F_BLOCK || s->type == F_CHAR) &&
	    s->st_rdev != p->fts_statp->st_rdev) {
		LABEL;
		FUNC28(flavor == F_FREEBSD9 ?
		    "%sdevice expected %#jx found %#jx" :
		    "%sdevice (%#jx, %#jx",
		    tab, (uintmax_t)s->st_rdev,
		    (uintmax_t)p->fts_statp->st_rdev);
		if (uflag) {
			if ((FUNC33(p->fts_accpath) == -1) ||
			    (FUNC24(p->fts_accpath,
			      s->st_mode | FUNC25(s->type),
			      s->st_rdev) == -1) ||
			    (FUNC23(p->fts_accpath, p->fts_statp->st_uid,
			      p->fts_statp->st_gid) == -1) )
				FUNC28(", not modified: %s%s\n",
				    FUNC31(errno),
				    flavor == F_FREEBSD9 ? "" : ")");
			 else
				FUNC28(", modified%s\n",
				    flavor == F_FREEBSD9 ? "" : ")");
		} else
			FUNC28(")\n");
		tab = "\t";
	}
	/* Set the uid/gid first, then set the mode. */
	if (s->flags & (F_UID | F_UNAME) && s->st_uid != p->fts_statp->st_uid) {
		LABEL;
		FUNC28(flavor == F_FREEBSD9 ?
		    "%suser expected %lu found %lu" : "%suser (%lu, %lu",
		    tab, (u_long)s->st_uid, (u_long)p->fts_statp->st_uid);
		if (uflag) {
			if (FUNC23(p->fts_accpath, s->st_uid, -1))
				FUNC28(", not modified: %s%s\n",
				    FUNC31(errno),
				    flavor == F_FREEBSD9 ? "" : ")");
			else
				FUNC28(", modified%s\n",
				    flavor == F_FREEBSD9 ? "" : ")");
		} else
			FUNC28(")\n");
		tab = "\t";
	}
	if (s->flags & (F_GID | F_GNAME) && s->st_gid != p->fts_statp->st_gid) {
		LABEL;
		FUNC28(flavor == F_FREEBSD9 ?
		    "%sgid expected %lu found %lu" : "%sgid (%lu, %lu",
		    tab, (u_long)s->st_gid, (u_long)p->fts_statp->st_gid);
		if (uflag) {
			if (FUNC23(p->fts_accpath, -1, s->st_gid))
				FUNC28(", not modified: %s%s\n",
				    FUNC31(errno),
				    flavor == F_FREEBSD9 ? "" : ")");
			else
				FUNC28(", modified%s\n",
				    flavor == F_FREEBSD9 ? "" : ")");
		}
		else
			FUNC28(")\n");
		tab = "\t";
	}
	if (s->flags & F_MODE &&
	    s->st_mode != (p->fts_statp->st_mode & MBITS)) {
		if (lflag) {
			mode_t tmode, mode;

			tmode = s->st_mode;
			mode = p->fts_statp->st_mode & MBITS;
			/*
			 * if none of the suid/sgid/etc bits are set,
			 * then if the mode is a subset of the target,
			 * skip.
			 */
			if (!((tmode & ~(S_IRWXU|S_IRWXG|S_IRWXO)) ||
			    (mode & ~(S_IRWXU|S_IRWXG|S_IRWXO))))
				if ((mode | tmode) == tmode)
					goto skip;
		}

		LABEL;
		FUNC28(flavor == F_FREEBSD9 ?
		    "%spermissions expcted %#lo found %#lo" :
		    "%spermissions (%#lo, %#lo",
		    tab, (u_long)s->st_mode,
		    (u_long)p->fts_statp->st_mode & MBITS);
		if (uflag) {
			if (FUNC22(p->fts_accpath, s->st_mode))
				FUNC28(", not modified: %s%s\n",
				    FUNC31(errno),
				    flavor == F_FREEBSD9 ? "" : ")");
			else
				FUNC28(", modified%s\n",
				    flavor == F_FREEBSD9 ? "" : ")");
		}
		else
			FUNC28(")\n");
		tab = "\t";
	skip:	;
	}
	if (s->flags & F_NLINK && s->type != F_DIR &&
	    s->st_nlink != p->fts_statp->st_nlink) {
		LABEL;
		FUNC28(flavor == F_FREEBSD9 ?
		    "%slink count expected %lu found %lu\n" :
		    "%slink count (%lu, %lu)\n",
		    tab, (u_long)s->st_nlink, (u_long)p->fts_statp->st_nlink);
		tab = "\t";
	}
	if (s->flags & F_SIZE && s->st_size != p->fts_statp->st_size) {
		LABEL;
		FUNC28(flavor == F_FREEBSD9 ?
		    "%ssize expected %ju found %ju\n" : "%ssize (%ju, %ju)\n",
		    tab, (uintmax_t)s->st_size,
		    (uintmax_t)p->fts_statp->st_size);
		tab = "\t";
	}
	/*
	 * XXX
	 * Since utimes(2) only takes a timeval, there's no point in
	 * comparing the low bits of the timespec nanosecond field.  This
	 * will only result in mismatches that we can never fix.
	 *
	 * Doesn't display microsecond differences.
	 */
	if (s->flags & F_TIME) {
		struct timeval tv[2];
		struct stat *ps = p->fts_statp;
		time_t smtime = s->st_mtimespec.tv_sec;

#if defined(BSD4_4) && !defined(HAVE_NBTOOL_CONFIG_H)
		time_t pmtime = ps->st_mtimespec.tv_sec;

		TIMESPEC_TO_TIMEVAL(&tv[0], &s->st_mtimespec);
		TIMESPEC_TO_TIMEVAL(&tv[1], &ps->st_mtimespec);
#else
		time_t pmtime = (time_t)ps->st_mtime;

		tv[0].tv_sec = smtime;
		tv[0].tv_usec = 0;
		tv[1].tv_sec = pmtime;
		tv[1].tv_usec = 0;
#endif

		if (tv[0].tv_sec != tv[1].tv_sec ||
		    tv[0].tv_usec != tv[1].tv_usec) {
			LABEL;
			FUNC28(flavor == F_FREEBSD9 ?
			    "%smodification time expected %.24s found " :
			    "%smodification time (%.24s, ",
			    tab, FUNC18(&smtime));
			FUNC28("%.24s", FUNC18(&pmtime));
			if (tflag) {
				tv[1] = tv[0];
				if (FUNC34(p->fts_accpath, tv))
					FUNC28(", not modified: %s%s\n",
					    FUNC31(errno),
					    flavor == F_FREEBSD9 ? "" : ")");
				else
					FUNC28(", modified%s\n",
					    flavor == F_FREEBSD9 ? "" : ")");
			} else
				FUNC28("%s\n", flavor == F_FREEBSD9 ? "" : ")");
			tab = "\t";
		}
	}
#if HAVE_STRUCT_STAT_ST_FLAGS
	/*
	 * XXX
	 * since lchflags(2) will reset file times, the utimes() above
	 * may have been useless!  oh well, we'd rather have correct
	 * flags, rather than times?
	 */
        if ((s->flags & F_FLAGS) && ((s->st_flags != p->fts_statp->st_flags)
	    || mflag || iflag)) {
		if (s->st_flags != p->fts_statp->st_flags) {
			char *f_s;
			LABEL;
			f_s = flags_to_string(s->st_flags, "none");
			printf(flavor == F_FREEBSD9 ?
			    "%sflags expected \"%s\" found " :
			    "%sflags (\"%s\" is not ", tab, f_s);
			free(f_s);
			f_s = flags_to_string(p->fts_statp->st_flags, "none");
			printf("\"%s\"", f_s);
			free(f_s);
		}
		if (uflag) {
			if (iflag)
				SETFLAGS(0, CH_MASK);
			else if (mflag)
				CLEARFLAGS(0, SP_FLGS);
			else
				SETFLAGS(0, (~SP_FLGS & CH_MASK));
		} else
			printf("%s\n", flavor == F_FREEBSD9 ? "" : ")");
		tab = "\t";
	}
#endif	/* HAVE_STRUCT_STAT_ST_FLAGS */

	/*
	 * from this point, no more permission checking or whacking
	 * occurs, only checking of stuff like checksums and symlinks.
	 */
 afterpermwhack:
	if (s->flags & F_CKSUM) {
		if ((fd = FUNC27(p->fts_accpath, O_RDONLY, 0)) < 0) {
			LABEL;
			FUNC28("%scksum: %s: %s\n",
			    tab, p->fts_accpath, FUNC31(errno));
			tab = "\t";
		} else if (FUNC17(fd, &val, &len)) {
			FUNC16(fd);
			LABEL;
			FUNC28("%scksum: %s: %s\n",
			    tab, p->fts_accpath, FUNC31(errno));
			tab = "\t";
		} else {
			FUNC16(fd);
			if (s->cksum != val) {
				LABEL;
				FUNC28(flavor == F_FREEBSD9 ?
				    "%scksum expected %lu found %lu\n" :
				    "%scksum (%lu, %lu)\n",
				    tab, s->cksum, (unsigned long)val);
			}
			tab = "\t";
		}
	}
#ifndef NO_MD5
	if (s->flags & F_MD5) {
		if ((digestbuf = FUNC1(p->fts_accpath, NULL)) == NULL) {
			LABEL;
			FUNC28("%s%s: %s: %s\n",
			    tab, MD5KEY, p->fts_accpath, FUNC31(errno));
			tab = "\t";
		} else {
			if (FUNC30(s->md5digest, digestbuf)) {
				LABEL;
				FUNC28(flavor == F_FREEBSD9 ?
				    "%s%s expected %s found %s\n" :
				    "%s%s (0x%s, 0x%s)\n",
				    tab, MD5KEY, s->md5digest, digestbuf);
			}
			tab = "\t";
			FUNC20(digestbuf);
		}
	}
#endif	/* ! NO_MD5 */
#ifndef NO_RMD160
	if (s->flags & F_RMD160) {
		if ((digestbuf = FUNC2(p->fts_accpath, NULL)) == NULL) {
			LABEL;
			FUNC28("%s%s: %s: %s\n",
			    tab, RMD160KEY, p->fts_accpath, FUNC31(errno));
			tab = "\t";
		} else {
			if (FUNC30(s->rmd160digest, digestbuf)) {
				LABEL;
				FUNC28(flavor == F_FREEBSD9 ?
				    "%s%s expected %s found %s\n" :
				    "%s%s (0x%s, 0x%s)\n",
				    tab, RMD160KEY, s->rmd160digest, digestbuf);
			}
			tab = "\t";
			FUNC20(digestbuf);
		}
	}
#endif	/* ! NO_RMD160 */
#ifndef NO_SHA1
	if (s->flags & F_SHA1) {
		if ((digestbuf = FUNC4(p->fts_accpath, NULL)) == NULL) {
			LABEL;
			FUNC28("%s%s: %s: %s\n",
			    tab, SHA1KEY, p->fts_accpath, FUNC31(errno));
			tab = "\t";
		} else {
			if (FUNC30(s->sha1digest, digestbuf)) {
				LABEL;
				FUNC28(flavor == F_FREEBSD9 ? 
				    "%s%s expected %s found %s\n" :
				    "%s%s (0x%s, 0x%s)\n",
				    tab, SHA1KEY, s->sha1digest, digestbuf);
			}
			tab = "\t";
			FUNC20(digestbuf);
		}
	}
#endif	/* ! NO_SHA1 */
#ifndef NO_SHA2
	if (s->flags & F_SHA256) {
		if ((digestbuf = FUNC5(p->fts_accpath, NULL)) == NULL) {
			LABEL;
			FUNC28("%s%s: %s: %s\n",
			    tab, SHA256KEY, p->fts_accpath, FUNC31(errno));
			tab = "\t";
		} else {
			if (FUNC30(s->sha256digest, digestbuf)) {
				LABEL;
				FUNC28(flavor == F_FREEBSD9 ? 
				    "%s%s expected %s found %s\n" :
				    "%s%s (0x%s, 0x%s)\n",
				    tab, SHA256KEY, s->sha256digest, digestbuf);
			}
			tab = "\t";
			FUNC20(digestbuf);
		}
	}
#ifdef SHA384_BLOCK_LENGTH
	if (s->flags & F_SHA384) {
		if ((digestbuf = SHA384_File(p->fts_accpath, NULL)) == NULL) {
			LABEL;
			printf("%s%s: %s: %s\n",
			    tab, SHA384KEY, p->fts_accpath, strerror(errno));
			tab = "\t";
		} else {
			if (strcmp(s->sha384digest, digestbuf)) {
				LABEL;
				printf(flavor == F_FREEBSD9 ? 
				    "%s%s expected %s found %s\n" :
				    "%s%s (0x%s, 0x%s)\n",
				    tab, SHA384KEY, s->sha384digest, digestbuf);
			}
			tab = "\t";
			free(digestbuf);
		}
	}
#endif
	if (s->flags & F_SHA512) {
		if ((digestbuf = FUNC7(p->fts_accpath, NULL)) == NULL) {
			LABEL;
			FUNC28("%s%s: %s: %s\n",
			    tab, SHA512KEY, p->fts_accpath, FUNC31(errno));
			tab = "\t";
		} else {
			if (FUNC30(s->sha512digest, digestbuf)) {
				LABEL;
				FUNC28(flavor == F_FREEBSD9 ? 
				    "%s%s expected %s found %s\n" :
				    "%s%s (0x%s, 0x%s)\n",
				    tab, SHA512KEY, s->sha512digest, digestbuf);
			}
			tab = "\t";
			FUNC20(digestbuf);
		}
	}
#endif	/* ! NO_SHA2 */
	if (s->flags & F_SLINK &&
	    FUNC30(cp = FUNC29(p->fts_accpath), s->slink)) {
		LABEL;
		FUNC28(flavor == F_FREEBSD9 ? 
		    "%slink ref expected %s found %s" :
		    "%slink ref (%s, %s", tab, cp, s->slink);
		if (uflag) {
			if ((FUNC33(p->fts_accpath) == -1) ||
			    (FUNC32(s->slink, p->fts_accpath) == -1) )
				FUNC28(", not modified: %s%s\n",
				    FUNC31(errno),
				    flavor == F_FREEBSD9 ? "" : ")");
			else
				FUNC28(", modified%s\n",
				    flavor == F_FREEBSD9 ? "" : ")");
		} else
			FUNC28("%s\n", flavor == F_FREEBSD9 ? "" : ")");
	}
	return (label);
}