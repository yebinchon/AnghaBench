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
typedef  int /*<<< orphan*/  tOptions ;
struct TYPE_3__ {scalar_t__ valType; } ;
typedef  TYPE_1__ tOptionValue ;
typedef  scalar_t__ tOptionLoadMode ;
typedef  int /*<<< orphan*/  tOptState ;

/* Variables and functions */
 char NUL ; 
 scalar_t__ OPARG_TYPE_STRING ; 
 scalar_t__ OPTION_LOAD_COOKED ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char,size_t) ; 
 scalar_t__ option_load_mode ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,TYPE_1__*) ; 
 char* FUNC7 (char*,char) ; 
 char* FUNC8 (char*,char*,scalar_t__) ; 

__attribute__((used)) static char *
FUNC9(tOptions * opts, tOptState * ost, char * txt, int dir)
{
    tOptionLoadMode mode = option_load_mode;
    tOptionValue    valu;

    char * pzName = ++txt;
    char * pzData;
    char * pcNulPoint;

    txt = FUNC0(txt);
    pcNulPoint = txt;
    valu.valType = OPARG_TYPE_STRING;

    switch (*txt) {
    case ' ':
    case '\t':
        txt = FUNC2(FUNC6(
            opts, FUNC1(txt), &mode, &valu));
        if (txt == NULL)
            return txt;
        if (*txt == '>')
            break;
        if (*txt != '/')
            return NULL;
        /* FALLTHROUGH */

    case '/':
        if (txt[1] != '>')
            return NULL;
        *txt = NUL;
        txt += 2;
        FUNC4(opts, ost, pzName, dir, mode);
        return txt;

    case '>':
        break;

    default:
        txt = FUNC7(txt, '>');
        if (txt != NULL)
            txt++;
        return txt;
    }

    /*
     *  If we are here, we have a value.  "txt" points to a closing angle
     *  bracket.  Separate the name from the value for a moment.
     */
    *pcNulPoint = NUL;
    pzData = ++txt;
    txt = FUNC8(txt, pzName, mode);
    if (txt == NULL)
        return txt;

    /*
     *  Rejoin the name and value for parsing by "load_opt_line()".
     *  Erase any attributes parsed by "parse_attrs()".
     */
    FUNC5(pcNulPoint, ' ', (size_t)(pzData - pcNulPoint));

    /*
     *  If we are getting a "string" value that is to be cooked,
     *  then process the XML-ish &xx; XML-ish and %XX hex characters.
     */
    if (  (valu.valType == OPARG_TYPE_STRING)
       && (mode == OPTION_LOAD_COOKED))
        FUNC3(pzData);

    /*
     *  "pzName" points to what looks like text for one option/configurable.
     *  It is NUL terminated.  Process it.
     */
    FUNC4(opts, ost, pzName, dir, mode);

    return txt;
}