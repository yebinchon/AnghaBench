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
struct Strbuf {char const* s; scalar_t__ len; } ;
typedef  char Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Strbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct Strbuf*) ; 
 int _DOL ; 
 int _ESC ; 
 int _GLOB ; 
 int _META ; 
 int _QB ; 
 int _QF ; 
 scalar_t__ FUNC2 (char const,int) ; 

const Char *
FUNC3(struct Strbuf *buf, const Char *s)
{
    buf->len = 0;
    while (*s != '\0') {
	if (FUNC2(*s, _META | _DOL | _QF | _QB | _ESC | _GLOB))
	    FUNC0(buf, '\\');
	FUNC0(buf, *s++);
    }
    FUNC1(buf);
    return buf->s;
}