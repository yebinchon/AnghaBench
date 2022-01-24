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
struct Strbuf {char* len; int /*<<< orphan*/  s; } ;
typedef  char Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct Strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct Strbuf*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char) ; 
#define  TW_DIRECTORY 132 
#define  TW_FILE 131 
#define  TW_LOGNAME 130 
#define  TW_TEXT 129 
#define  TW_VARIABLE 128 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(int looking, struct Strbuf *word, Char *dir, Char *exp_name)
{
    Char *ptr;

    switch (looking) {
    case TW_LOGNAME:
	word->len = 0;
	FUNC1(word, '~');
	break;

    case TW_VARIABLE:
	if ((ptr = FUNC3(word->s, '$')) != NULL) {
	    if (ptr[1] == '{') ptr++;
	    word->len = ptr + 1 - word->s; /* Delete after the dollar */
	} else
	    word->len = 0;
	break;

    case TW_DIRECTORY:
    case TW_FILE:
    case TW_TEXT:
	word->len = 0;
	FUNC0(word, dir);		/* put back dir part */
	break;

    default:
	word->len = 0;
	break;
    }

    (void) FUNC4(exp_name);
    FUNC0(word, exp_name);		/* add extended name */
    FUNC2(word);
}