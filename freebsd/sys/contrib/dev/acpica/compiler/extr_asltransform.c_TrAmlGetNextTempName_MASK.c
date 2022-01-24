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
typedef  int UINT8 ;
typedef  int /*<<< orphan*/  ACPI_PARSE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ASL_ERROR ; 
 int /*<<< orphan*/  ASL_MSG_TOO_MANY_TEMPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int) ; 

__attribute__((used)) static char *
FUNC2 (
    ACPI_PARSE_OBJECT       *Op,
    UINT8                   *TempCount)
{
    char                    *TempName;


    if (*TempCount >= (10 + 26))  /* 0-35 valid: 0-9 and A-Z for TempName[3] */
    {
        /* Too many temps */

        FUNC0 (ASL_ERROR, ASL_MSG_TOO_MANY_TEMPS, Op, NULL);
        return (NULL);
    }

    TempName = FUNC1 (5);

    if (*TempCount < 10)    /* 0-9 */
    {
        TempName[3] = (char) (*TempCount + '0');
    }
    else                    /* 10-35: A-Z */
    {
        TempName[3] = (char) (*TempCount + ('A' - 10));
    }

    (*TempCount)++;

    /* First three characters are always "_T_" */

    TempName[0] = '_';
    TempName[1] = 'T';
    TempName[2] = '_';

    return (TempName);
}