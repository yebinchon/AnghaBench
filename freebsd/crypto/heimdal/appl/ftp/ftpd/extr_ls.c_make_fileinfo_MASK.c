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
typedef  int time_t ;
struct tm {int dummy; } ;
struct stat {int st_mode; int st_mtime; scalar_t__ st_size; scalar_t__ st_rdev; scalar_t__ st_gid; scalar_t__ st_uid; int /*<<< orphan*/  st_nlink; int /*<<< orphan*/  st_blocks; int /*<<< orphan*/  st_ino; } ;
struct passwd {char* pw_name; } ;
struct group {char* gr_name; } ;
struct fileinfo {char* mode; int /*<<< orphan*/ * link; int /*<<< orphan*/ * filename; int /*<<< orphan*/ * date; int /*<<< orphan*/ * size; int /*<<< orphan*/ * minor; int /*<<< orphan*/ * major; int /*<<< orphan*/ * group; int /*<<< orphan*/ * user; int /*<<< orphan*/  n_link; int /*<<< orphan*/  bsize; int /*<<< orphan*/  inode; struct stat st; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int LS_TYPE ; 
 int S_IRWXG ; 
 size_t S_IRWXO ; 
 int S_IRWXU ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int S_ISGID ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int S_ISTXT ; 
 int S_ISUID ; 
 scalar_t__ FUNC7 (int) ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 int S_IXUSR ; 
 int FUNC8 (int /*<<< orphan*/ **,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 struct group* FUNC10 (scalar_t__) ; 
 struct passwd* FUNC11 (scalar_t__) ; 
 struct tm* FUNC12 (int*) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int FUNC15 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 void* FUNC18 (char const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,int,char*,struct tm*) ; 
 char* FUNC21 (char const*,char) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*) ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC24(FILE *out, const char *filename, struct fileinfo *file, int flags)
{
    char buf[128];
    int file_type = 0;
    struct stat *st = &file->st;

    file->inode = st->st_ino;
    file->bsize = FUNC9(st->st_blocks);

    if(FUNC2(st->st_mode)) {
	file->mode[0] = 'd';
	file_type = '/';
    }
    else if(FUNC1(st->st_mode))
	file->mode[0] = 'c';
    else if(FUNC0(st->st_mode))
	file->mode[0] = 'b';
    else if(FUNC5(st->st_mode)) {
	file->mode[0] = '-';
	if(st->st_mode & (S_IXUSR | S_IXGRP | S_IXOTH))
	    file_type = '*';
    }
    else if(FUNC3(st->st_mode)) {
	file->mode[0] = 'p';
	file_type = '|';
    }
    else if(FUNC4(st->st_mode)) {
	file->mode[0] = 'l';
	file_type = '@';
    }
    else if(FUNC6(st->st_mode)) {
	file->mode[0] = 's';
	file_type = '=';
    }
#ifdef S_ISWHT
    else if(S_ISWHT(st->st_mode)) {
	file->mode[0] = 'w';
	file_type = '%';
    }
#endif
    else
	file->mode[0] = '?';
    {
	char *x[] = { "---", "--x", "-w-", "-wx",
		      "r--", "r-x", "rw-", "rwx" };
	FUNC17(file->mode + 1, x[(st->st_mode & S_IRWXU) >> 6]);
	FUNC17(file->mode + 4, x[(st->st_mode & S_IRWXG) >> 3]);
	FUNC17(file->mode + 7, x[(st->st_mode & S_IRWXO) >> 0]);
	if((st->st_mode & S_ISUID)) {
	    if((st->st_mode & S_IXUSR))
		file->mode[3] = 's';
	    else
		file->mode[3] = 'S';
	}
	if((st->st_mode & S_ISGID)) {
	    if((st->st_mode & S_IXGRP))
		file->mode[6] = 's';
	    else
		file->mode[6] = 'S';
	}
	if((st->st_mode & S_ISTXT)) {
	    if((st->st_mode & S_IXOTH))
		file->mode[9] = 't';
	    else
		file->mode[9] = 'T';
	}
    }
    file->n_link = st->st_nlink;
    {
	struct passwd *pwd;
	pwd = FUNC11(st->st_uid);
	if(pwd == NULL) {
	    if (FUNC8(&file->user, "%u", (unsigned)st->st_uid) == -1)
		file->user = NULL;
	} else
	    file->user = FUNC18(pwd->pw_name);
	if (file->user == NULL) {
	    FUNC22(LOG_ERR, "out of memory");
	    return -1;
	}
    }
    {
	struct group *grp;
	grp = FUNC10(st->st_gid);
	if(grp == NULL) {
	    if (FUNC8(&file->group, "%u", (unsigned)st->st_gid) == -1)
		file->group = NULL;
	} else
	    file->group = FUNC18(grp->gr_name);
	if (file->group == NULL) {
	    FUNC22(LOG_ERR, "out of memory");
	    return -1;
	}
    }

    if(FUNC1(st->st_mode) || FUNC0(st->st_mode)) {
#if defined(major) && defined(minor)
	if (asprintf(&file->major, "%u", (unsigned)major(st->st_rdev)) == -1)
	    file->major = NULL;
	if (asprintf(&file->minor, "%u", (unsigned)minor(st->st_rdev)) == -1)
	    file->minor = NULL;
#else
	/* Don't want to use the DDI/DKI crap. */
	if (FUNC8(&file->major, "%u", (unsigned)st->st_rdev) == -1)
	    file->major = NULL;
	if (FUNC8(&file->minor, "%u", 0) == -1)
	    file->minor = NULL;
#endif
	if (file->major == NULL || file->minor == NULL) {
	    FUNC22(LOG_ERR, "out of memory");
	    return -1;
	}
    } else {
	if (FUNC8(&file->size, "%lu", (unsigned long)st->st_size) == -1)
	    file->size = NULL;
    }

    {
	time_t t = FUNC23(NULL);
	time_t mtime = st->st_mtime;
	struct tm *tm = FUNC12(&mtime);
	if((t - mtime > 6*30*24*60*60) ||
	   (mtime - t > 6*30*24*60*60))
	    FUNC20(buf, sizeof(buf), "%b %e  %Y", tm);
	else
	    FUNC20(buf, sizeof(buf), "%b %e %H:%M", tm);
	file->date = FUNC18(buf);
	if (file->date == NULL) {
	    FUNC22(LOG_ERR, "out of memory");
	    return -1;
	}
    }
    {
	const char *p = FUNC21(filename, '/');
	if(p)
	    p++;
	else
	    p = filename;
	if((flags & LS_TYPE) && file_type != 0) {
	    if (FUNC8(&file->filename, "%s%c", p, file_type) == -1)
		file->filename = NULL;
	} else
	    file->filename = FUNC18(p);
	if (file->filename == NULL) {
	    FUNC22(LOG_ERR, "out of memory");
	    return -1;
	}
    }
    if(FUNC4(st->st_mode)) {
	int n;
	n = FUNC15((char *)filename, buf, sizeof(buf) - 1);
	if(n >= 0) {
	    buf[n] = '\0';
	    file->link = FUNC18(buf);
	    if (file->link == NULL) {
		FUNC22(LOG_ERR, "out of memory");
		return -1;
	    }
	} else
	    FUNC16(out, "readlink(%s): %s", filename, FUNC19(errno));
    }
    return 0;
}