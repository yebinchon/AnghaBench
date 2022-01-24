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
typedef  int ACPI_SIZE ;

/* Variables and functions */
 int FUNC0 (char*,char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static char *
FUNC5 (
    char                    *String)
{
    char                    *Start;
    char                    *End;
    char                    *ReturnString;
    ACPI_SIZE               Length;


    /* Skip lines that start with a space */

    if (*String == 0 || !FUNC2 (String, " "))
    {
        ReturnString = FUNC1 (1);
        return (ReturnString);
    }

    /* Setup pointers to start and end of input string */

    Start = String;
    End = String + FUNC3 (String) - 1;

    /* Find first non-whitespace character */

    while ((Start <= End) && ((*Start == ' ') || (*Start == '\t')))
    {
        Start++;
    }

    /* Find last non-space character */

    while (End >= Start)
    {
        if (*End == '\n')
        {
            End--;
            continue;
        }

        if (*End != ' ')
        {
            break;
        }

        End--;
    }

    /* Remove any quotes around the string */

    if (*Start == '\"')
    {
        Start++;
    }
    if (*End == '\"')
    {
        End--;
    }

    /* Create the trimmed return string */

    Length = FUNC0 (End, Start) + 1;
    ReturnString = FUNC1 (Length + 1);
    if (FUNC3 (Start))
    {
        FUNC4 (ReturnString, Start, Length);
    }

    ReturnString[Length] = 0;
    return (ReturnString);
}