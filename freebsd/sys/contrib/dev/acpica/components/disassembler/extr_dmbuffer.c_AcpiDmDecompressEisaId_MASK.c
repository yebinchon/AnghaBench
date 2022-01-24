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
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_3__ {char* Description; } ;
typedef  TYPE_1__ AH_DEVICE_ID ;

/* Variables and functions */
 int ACPI_EISAID_STRING_SIZE ; 
 TYPE_1__* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

void
FUNC3 (
    UINT32                  EncodedId)
{
    char                    IdBuffer[ACPI_EISAID_STRING_SIZE];
    const AH_DEVICE_ID      *Info;


    /* Convert EISAID to a string an emit the statement */

    FUNC1 (IdBuffer, EncodedId);
    FUNC2 ("EisaId (\"%s\")", IdBuffer);

    /* If we know about the ID, emit the description */

    Info = FUNC0 (IdBuffer);
    if (Info)
    {
        FUNC2 (" /* %s */", Info->Description);
    }
}