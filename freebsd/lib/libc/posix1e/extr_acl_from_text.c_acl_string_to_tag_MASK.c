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
typedef  int acl_tag_t ;

/* Variables and functions */
 int ACL_GROUP ; 
 int ACL_GROUP_OBJ ; 
 int ACL_MASK ; 
 int ACL_OTHER ; 
 int ACL_USER ; 
 int ACL_USER_OBJ ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static acl_tag_t
FUNC1(char *tag, char *qualifier)
{

	if (*qualifier == '\0') {
		if ((!FUNC0(tag, "user")) || (!FUNC0(tag, "u"))) {
			return (ACL_USER_OBJ);
		} else
		if ((!FUNC0(tag, "group")) || (!FUNC0(tag, "g"))) {
			return (ACL_GROUP_OBJ);
		} else
		if ((!FUNC0(tag, "mask")) || (!FUNC0(tag, "m"))) {
			return (ACL_MASK);
		} else
		if ((!FUNC0(tag, "other")) || (!FUNC0(tag, "o"))) {
			return (ACL_OTHER);
		} else
			return(-1);
	} else {
		if ((!FUNC0(tag, "user")) || (!FUNC0(tag, "u"))) {
			return(ACL_USER);
		} else
		if ((!FUNC0(tag, "group")) || (!FUNC0(tag, "g"))) {
			return(ACL_GROUP);
		} else
			return(-1);
	}
}