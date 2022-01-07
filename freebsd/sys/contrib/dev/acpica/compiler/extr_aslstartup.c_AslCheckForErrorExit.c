
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int AE_ERROR ;
 int AE_OK ;
 size_t ASL_ERROR ;
 int ASL_MSG_WARNING_AS_ERROR ;
 size_t ASL_WARNING ;
 size_t ASL_WARNING2 ;
 size_t ASL_WARNING3 ;
 int AslError (size_t,int ,int *,char*) ;
 scalar_t__* AslGbl_ExceptionCount ;
 int AslGbl_IgnoreErrors ;
 scalar_t__ AslGbl_WarningsAsErrors ;

ACPI_STATUS
AslCheckForErrorExit (
    void)
{





    if (!AslGbl_IgnoreErrors)
    {
        if (AslGbl_ExceptionCount[ASL_ERROR] > 0)
        {
            return (AE_ERROR);
        }



        if (AslGbl_WarningsAsErrors)
        {
            if ((AslGbl_ExceptionCount[ASL_WARNING] > 0) ||
                (AslGbl_ExceptionCount[ASL_WARNING2] > 0) ||
                (AslGbl_ExceptionCount[ASL_WARNING3] > 0))
            {
                AslError (ASL_ERROR, ASL_MSG_WARNING_AS_ERROR, ((void*)0),
                    "(reporting warnings as errors)");
                return (AE_ERROR);
            }
        }
    }

    return (AE_OK);
}
