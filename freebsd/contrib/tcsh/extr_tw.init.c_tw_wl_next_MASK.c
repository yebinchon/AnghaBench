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
typedef  int Strbuf ;
typedef  char Char ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 char* tw_word ; 

int
FUNC3(struct Strbuf *res, struct Strbuf *dir, int *flags)
{
    const Char *p;

    FUNC2(dir);
    FUNC2(flags);
    if (tw_word == NULL || tw_word[0] == '\0')
	return 0;

    while (*tw_word && FUNC0(*tw_word)) tw_word++;

    for (p = tw_word; *tw_word && !FUNC0(*tw_word); tw_word++)
	continue;
    if (tw_word == p)
	return 0;
    FUNC1(res, p, tw_word - p);
    if (*tw_word)
	tw_word++;
    return 1;
}