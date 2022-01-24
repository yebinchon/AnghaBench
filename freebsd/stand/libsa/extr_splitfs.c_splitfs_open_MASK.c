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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct split_file {int filesc; void** descsv; void** filesv; } ;
struct open_file {scalar_t__ f_flags; struct split_file* f_fsdata; } ;

/* Variables and functions */
 int CONF_BUF ; 
 int EISDIR ; 
 int ENOENT ; 
 int EPERM ; 
 scalar_t__ F_READ ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct split_file*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int,struct stat*) ; 
 scalar_t__ FUNC6 (char) ; 
 void* FUNC7 (int) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 void* FUNC10 (void**,int) ; 
 int /*<<< orphan*/  FUNC11 (struct split_file*) ; 
 scalar_t__ FUNC12 (struct split_file*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 void* FUNC15 (char*) ; 
 int FUNC16 (char const*) ; 
 char* FUNC17 (char const*,char) ; 

__attribute__((used)) static int
FUNC18(const char *fname, struct open_file *f)
{
    char *buf, *confname, *cp;
    int	conffd;
    struct split_file *sf;
    struct stat sb;

    /* Have to be in "just read it" mode */
    if (f->f_flags != F_READ)
	return(EPERM);

    /* If the name already ends in `.split', ignore it */
    if ((cp = FUNC17(fname, '.')) && (!FUNC14(cp, ".split")))
	return(ENOENT);

    /* Construct new name */
    confname = FUNC7(FUNC16(fname) + 7);
    FUNC13(confname, "%s.split", fname);

    /* Try to open the configuration file */
    conffd = FUNC8(confname, O_RDONLY);
    FUNC4(confname);
    if (conffd == -1)
	return(ENOENT);

    if (FUNC5(conffd, &sb) < 0) {
	FUNC9("splitfs_open: stat failed\n");
	FUNC2(conffd);
	return(ENOENT);
    }
    if (!FUNC0(sb.st_mode)) {
	FUNC9("splitfs_open: not a file\n");
	FUNC2(conffd);
	return(EISDIR);			/* best guess */
    }

    /* Allocate a split_file structure, populate it from the config file */
    sf = FUNC7(sizeof(struct split_file));
    FUNC1(sf, sizeof(struct split_file));
    buf = FUNC7(CONF_BUF);
    while (FUNC3(buf, CONF_BUF, conffd) > 0) {
	cp = buf;
	while ((*cp != '\0') && (FUNC6(*cp) == 0))
	    cp++;
	if (*cp != '\0') {
	    *cp = '\0';
	    cp++;
	}
	while ((*cp != '\0') && (FUNC6(*cp) != 0))
	    cp++;
	if (*cp == '\0')
	    cp = buf;
	sf->filesc++;
	sf->filesv = FUNC10(sf->filesv, sizeof(*(sf->filesv)) * sf->filesc);
	sf->descsv = FUNC10(sf->descsv, sizeof(*(sf->descsv)) * sf->filesc);
	sf->filesv[sf->filesc - 1] = FUNC15(buf);
	sf->descsv[sf->filesc - 1] = FUNC15(cp);
    }
    FUNC4(buf);
    FUNC2(conffd);

    if (sf->filesc == 0) {
	FUNC11(sf);
	return(ENOENT);
    }
    errno = FUNC12(sf);
    if (errno != 0) {
	FUNC11(sf);
	return(ENOENT);
    }

    /* Looks OK, we'll take it */
    f->f_fsdata = sf;
    return (0);
}