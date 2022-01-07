
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;
typedef scalar_t__ UINT16 ;
typedef int ACPI_PARSE_OBJECT ;


 int * ASL_GET_PEER_NODE (int *) ;

__attribute__((used)) static UINT16
RsGetInterruptDataLength (
    ACPI_PARSE_OBJECT *InitializerOp,
    UINT32 StartIndex)
{
    UINT16 InterruptLength;
    UINT32 i;




    InterruptLength = 0;
    for (i = 0; InitializerOp; i++)
    {
        InitializerOp = ASL_GET_PEER_NODE (InitializerOp);



        if (i >= StartIndex)
        {
            InterruptLength += 2;
        }
    }

    return (InterruptLength);
}
