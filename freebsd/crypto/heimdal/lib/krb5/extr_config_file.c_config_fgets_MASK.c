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
struct fileptr {char* s; int /*<<< orphan*/ * f; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 char* FUNC0 (char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (size_t,size_t) ; 
 int FUNC3 (char*,char*) ; 

__attribute__((used)) static char *
FUNC4(char *str, size_t len, struct fileptr *ptr)
{
    /* XXX this is not correct, in that they don't do the same if the
       line is longer than len */
    if(ptr->f != NULL)
	return FUNC0(str, len, ptr->f);
    else {
	/* this is almost strsep_copy */
	const char *p;
	ssize_t l;
	if(*ptr->s == '\0')
	    return NULL;
	p = ptr->s + FUNC3(ptr->s, "\n");
	if(*p == '\n')
	    p++;
	l = FUNC2(len, (size_t)(p - ptr->s));
	if(len > 0) {
	    FUNC1(str, ptr->s, l);
	    str[l] = '\0';
	}
	ptr->s = p;
	return str;
    }
}