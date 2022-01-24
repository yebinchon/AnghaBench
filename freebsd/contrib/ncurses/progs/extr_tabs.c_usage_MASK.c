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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (char const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC4(void)
{
    static const char *msg[] =
    {
	"Usage: tabs [options] [tabstop-list]"
	,""
	,"Options:"
	,"  -0       reset tabs"
	,"  -8       set tabs to standard interval"
	,"  -a       Assembler, IBM S/370, first format"
	,"  -a2      Assembler, IBM S/370, second format"
	,"  -c       COBOL, normal format"
	,"  -c2      COBOL compact format"
	,"  -c3      COBOL compact format extended"
	,"  -d       debug (show ruler with expected/actual tab positions)"
	,"  -f       FORTRAN"
	,"  -n       no-op (do not modify terminal settings)"
	,"  -p       PL/I"
	,"  -s       SNOBOL"
	,"  -u       UNIVAC 1100 Assembler"
	,"  -T name  use terminal type 'name'"
	,"  -V       print version"
	,""
	,"A tabstop-list is an ordered list of column numbers, e.g., 1,11,21"
	,"or 1,+10,+10 which is the same."
    };
    unsigned n;

    FUNC2(stdout);
    for (n = 0; n < FUNC1(msg); ++n) {
	FUNC3(stderr, "%s\n", msg[n]);
    }
    FUNC0(EXIT_FAILURE);
}