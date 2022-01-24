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
typedef  char u_char ;
struct nb_name {char* nn_name; char nn_type; char* nn_scope; } ;

/* Variables and functions */
 int /*<<< orphan*/  NB_ENCNAMELEN ; 
 int NB_MAXLABLEN ; 
 int NB_NAMELEN ; 
 int /*<<< orphan*/  FUNC0 (char**,char,int) ; 
 int FUNC1 (char*) ; 
 char FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(struct nb_name *np, u_char *dst)
{
	u_char *name, *plen;
	u_char *cp = dst;
	int i, lblen;

	*cp++ = NB_ENCNAMELEN;
	name = np->nn_name;
	if (name[0] == '*' && name[1] == 0) {
		FUNC0(&cp, '*', 1);
		FUNC0(&cp, ' ', NB_NAMELEN - 1);
	} else {
		for (i = 0; i < NB_NAMELEN - 1; i++)
			if (*name != 0)
				FUNC0(&cp, FUNC2(*name++), 1);
			else
				FUNC0(&cp, ' ', 1);
		FUNC0(&cp, np->nn_type, 1);
	}
	*cp = 0;
	if (np->nn_scope == NULL)
		return FUNC1(dst);
	plen = cp++;
	lblen = 0;
	for (name = np->nn_scope; ; name++) {
		if (*name == '.' || *name == 0) {
			*plen = lblen;
			plen = cp++;
			*plen = 0;
			if (*name == 0)
				break;
		} else {
			if (lblen < NB_MAXLABLEN) {
				*cp++ = *name;
				lblen++;
			}
		}
	}
	return FUNC1(dst);
}