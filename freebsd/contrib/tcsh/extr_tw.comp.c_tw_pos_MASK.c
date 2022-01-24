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
typedef  char Char ;

/* Variables and functions */
 int FUNC0 (char*) ; 

__attribute__((used)) static int
FUNC1(Char *ran, int wno)
{
    Char *p;

    if (ran[0] == '*' && ran[1] == '\0')
	return 1;

    for (p = ran; *p && *p != '-'; p++)
	continue;

    if (*p == '\0')			/* range == <number> */
	return wno == FUNC0(ran);
    
    if (ran == p)			/* range = - <number> */
	return wno <= FUNC0(&ran[1]);
    *p++ = '\0';

    if (*p == '\0')			/* range = <number> - */
	return FUNC0(ran) <= wno;
    else				/* range = <number> - <number> */
	return (FUNC0(ran) <= wno) && (wno <= FUNC0(p));
}