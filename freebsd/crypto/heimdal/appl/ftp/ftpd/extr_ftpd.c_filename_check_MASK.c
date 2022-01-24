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

/* Variables and functions */
 int /*<<< orphan*/  good_chars ; 
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned char) ; 
 char* FUNC4 (char*,char) ; 

int
FUNC5(char *filename)
{
    char *p;

    p = FUNC4(filename, '/');
    if(p)
	filename = p + 1;

    p = filename;

    if(FUNC0((unsigned char)*p)){
	p++;
	while(*p && (FUNC0((unsigned char)*p) || FUNC3(good_chars, (unsigned char)*p)))
	    p++;
	if(*p == '\0')
	    return 0;
    }
    FUNC1(553, "\"%s\" is not an acceptable filename.", filename);
    FUNC1(553, "The filename must start with an alphanumeric "
	   "character and must only");
    FUNC2(553, "consist of alphanumeric characters or any of the following: %s",
	  good_chars);
    return 1;
}