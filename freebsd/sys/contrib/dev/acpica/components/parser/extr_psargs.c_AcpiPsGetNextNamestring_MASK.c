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
typedef  int UINT8 ;
struct TYPE_3__ {int* Aml; } ;
typedef  TYPE_1__ ACPI_PARSE_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int ACPI_NAMESEG_SIZE ; 
#define  AML_DUAL_NAME_PREFIX 129 
#define  AML_MULTI_NAME_PREFIX 128 
 int /*<<< orphan*/  PsGetNextNamestring ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

char *
FUNC4 (
    ACPI_PARSE_STATE        *ParserState)
{
    UINT8                   *Start = ParserState->Aml;
    UINT8                   *End = ParserState->Aml;


    FUNC0 (PsGetNextNamestring);


    /* Point past any namestring prefix characters (backslash or carat) */

    while (FUNC2 (*End) ||
           FUNC1 (*End))
    {
        End++;
    }

    /* Decode the path prefix character */

    switch (*End)
    {
    case 0:

        /* NullName */

        if (End == Start)
        {
            Start = NULL;
        }
        End++;
        break;

    case AML_DUAL_NAME_PREFIX:

        /* Two name segments */

        End += 1 + (2 * ACPI_NAMESEG_SIZE);
        break;

    case AML_MULTI_NAME_PREFIX:

        /* Multiple name segments, 4 chars each, count in next byte */

        End += 2 + (*(End + 1) * ACPI_NAMESEG_SIZE);
        break;

    default:

        /* Single name segment */

        End += ACPI_NAMESEG_SIZE;
        break;
    }

    ParserState->Aml = End;
    FUNC3 ((char *) Start);
}