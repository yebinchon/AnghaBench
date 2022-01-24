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
struct group {char* gr_name; char** gr_mem; scalar_t__ gr_gid; int /*<<< orphan*/ * gr_passwd; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int ERANGE ; 
 int NS_NOTFOUND ; 
 int NS_RETURN ; 
 int NS_SUCCESS ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct group*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (char**,char*) ; 
 unsigned long FUNC3 (char*,char**,int) ; 

int
FUNC4(char *line, size_t linesize, struct group *grp, char *membuf,
    size_t membufsize, int *errnop)
{
	char	       *s_gid, *s_mem, *p, **members;
	unsigned long	n;
	int		maxmembers;

	FUNC1(grp, 0, sizeof(*grp));
	members = (char **)FUNC0(membuf);
	membufsize -= (char *)members - membuf;
	maxmembers = membufsize / sizeof(*members);
	if (maxmembers <= 0 ||
	    (grp->gr_name = FUNC2(&line, ":")) == NULL ||
	    grp->gr_name[0] == '\0' ||
	    (grp->gr_passwd = FUNC2(&line, ":")) == NULL ||
	    (s_gid = FUNC2(&line, ":")) == NULL ||
	    s_gid[0] == '\0')
		return (NS_NOTFOUND);
	s_mem = line;
	n = FUNC3(s_gid, &s_gid, 10);
	if (s_gid[0] != '\0')
		return (NS_NOTFOUND);
	grp->gr_gid = (gid_t)n;
	grp->gr_mem = members;
	while (maxmembers > 1 && s_mem != NULL) {
		p = FUNC2(&s_mem, ",");
		if (p != NULL && *p != '\0') {
			*members++ = p;
			maxmembers--;
		}
	}
	*members = NULL;
	if (s_mem == NULL)
		return (NS_SUCCESS);
	else {
		*errnop = ERANGE;
		return (NS_RETURN);
	}
}