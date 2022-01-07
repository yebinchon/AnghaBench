
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
struct TYPE_4__ {scalar_t__* Addr; struct TYPE_4__* Next; } ;
typedef int BOOLEAN ;
typedef TYPE_1__ ACPI_COMMENT_ADDR_NODE ;


 TYPE_1__* AcpiGbl_CommentAddrListHead ;
 int AcpiGbl_RegCommentCache ;
 TYPE_1__* AcpiOsAcquireObject (int ) ;
 int FALSE ;
 scalar_t__ FILENAME_COMMENT ;
 scalar_t__ PARENTFILENAME_COMMENT ;
 int TRUE ;

__attribute__((used)) static BOOLEAN
CvCommentExists (
    UINT8 *Address)
{
    ACPI_COMMENT_ADDR_NODE *Current = AcpiGbl_CommentAddrListHead;
    UINT8 Option;


    if (!Address)
    {
        return (FALSE);
    }

    Option = *(Address + 1);





    if ((Option == FILENAME_COMMENT) ||
        (Option == PARENTFILENAME_COMMENT))
    {
       return (FALSE);
    }

    if (!Current)
    {
        AcpiGbl_CommentAddrListHead =
            AcpiOsAcquireObject (AcpiGbl_RegCommentCache);
        AcpiGbl_CommentAddrListHead->Addr = Address;
        AcpiGbl_CommentAddrListHead->Next = ((void*)0);
        return (FALSE);
    }
    else
    {
        while (Current)
        {
            if (Current->Addr != Address)
            {
                Current = Current->Next;
            }
            else
            {
                return (TRUE);
            }
        }






        Current = AcpiGbl_CommentAddrListHead;
        AcpiGbl_CommentAddrListHead =
            AcpiOsAcquireObject (AcpiGbl_RegCommentCache);

        AcpiGbl_CommentAddrListHead->Addr = Address;
        AcpiGbl_CommentAddrListHead->Next = Current;
        return (FALSE);
    }
}
