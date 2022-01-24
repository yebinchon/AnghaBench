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
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* ACPI_SIG_DSDT ; 
 int /*<<< orphan*/  AE_LIMIT ; 
 int /*<<< orphan*/  AE_OK ; 
 int AcpiGbl_Optind ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 unsigned long FUNC10 (char*,char**,int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC11 (
    char                    **argv)
{
    char                    *Signature;
    char                    *End;
    unsigned long           TableCount;
    ACPI_STATUS             Status = AE_OK;


    FUNC4 ();

    Status = FUNC3 ();
    if (FUNC0 (Status))
    {
        return (Status);
    }

    /*
     * Special cases for DSDT, ALL, and '*'
     */

    /* Default (no signature option) is DSDT */

    if (AcpiGbl_Optind < 3)
    {
        Status = FUNC6 (ACPI_SIG_DSDT, 0);
        goto Exit;
    }

    AcpiGbl_Optind--;
    Signature = argv[AcpiGbl_Optind];
    FUNC2 (Signature);

    /*
     * Multiple SSDT support (-T <ssdt count>)
     */
    TableCount = FUNC10 (Signature, &End, 0);
    if (Signature != End)
    {
        /* The count is used for table ID and method name - max is 254(+1) */

        if (TableCount > 254)
        {
            FUNC8 (stderr, "%u SSDTs requested, maximum is 254\n",
                (unsigned int) TableCount);

            Status = AE_LIMIT;
            goto Exit;
        }

        Status = FUNC6 (ACPI_SIG_DSDT, TableCount);
        goto Exit;
    }

    if (!FUNC9 (Signature, "ALL"))
    {
        /* Create all available/known templates */

        Status = FUNC5 ();
        goto Exit;
    }

    /*
     * Normal case: Create template for each signature
     */
    while (argv[AcpiGbl_Optind])
    {
        Signature = argv[AcpiGbl_Optind];
        FUNC2 (Signature);

        Status = FUNC6 (Signature, 0);
        if (FUNC0 (Status))
        {
            goto Exit;
        }

        AcpiGbl_Optind++;
    }


Exit:
    /* Shutdown ACPICA subsystem */

    (void) FUNC1 ();
    FUNC7 ();
    return (Status);
}