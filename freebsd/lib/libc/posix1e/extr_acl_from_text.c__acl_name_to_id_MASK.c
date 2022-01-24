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
typedef  scalar_t__ uid_t ;
struct passwd {scalar_t__ pw_uid; } ;
struct group {scalar_t__ gr_gid; } ;
typedef  scalar_t__ gid_t ;
typedef  int acl_tag_t ;

/* Variables and functions */
#define  ACL_GROUP 129 
#define  ACL_USER 128 
 int EINVAL ; 
 int errno ; 
 struct group* FUNC0 (char*) ; 
 struct passwd* FUNC1 (char*) ; 
 unsigned long FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 

int
FUNC3(acl_tag_t tag, char *name, uid_t *id)
{
	struct group	*g;
	struct passwd	*p;
	unsigned long	l;
	char 		*endp;

	switch(tag) {
	case ACL_USER:
		p = FUNC1(name);
		if (p == NULL) {
			l = FUNC2(name, &endp, 0);
			if (*endp != '\0' || l != (unsigned long)(uid_t)l) {
				errno = EINVAL;
				return (-1);
			}
			*id = (uid_t)l;
			return (0);
		}
		*id = p->pw_uid;
		return (0);

	case ACL_GROUP:
		g = FUNC0(name);
		if (g == NULL) {
			l = FUNC2(name, &endp, 0);
			if (*endp != '\0' || l != (unsigned long)(gid_t)l) {
				errno = EINVAL;
				return (-1);
			}
			*id = (gid_t)l;
			return (0);
		}
		*id = g->gr_gid;
		return (0);

	default:
		return (EINVAL);
	}
}