#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_3__ {char* id; char* name; } ;
typedef  TYPE_1__ OpenPGP_user ;

/* Variables and functions */
 char* FUNC0 (size_t) ; 
 char* FUNC1 (char*,char) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 

ssize_t
FUNC4(int tag, unsigned char **pptr, size_t len, OpenPGP_user *user)
{
	char *cp;

	if (tag == 13) {
		user->id = FUNC0(len + 1);
		FUNC3(user->id, (char *)*pptr, len);
		user->id[len] = '\0';
		user->name = user->id;
		cp = FUNC1(user->id, '<');
		if (cp > user->id) {
			user->id = FUNC2(user->id);
			cp[-1] = '\0';
		}
	}
	*pptr += len;
	return ((ssize_t)len);
}