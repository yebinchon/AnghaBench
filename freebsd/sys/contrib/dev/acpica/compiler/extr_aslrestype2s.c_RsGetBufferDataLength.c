
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT16 ;
struct TYPE_6__ {scalar_t__ ParseOpcode; TYPE_2__* Child; } ;
struct TYPE_7__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 TYPE_2__* ASL_GET_PEER_NODE (TYPE_2__*) ;
 scalar_t__ PARSEOP_DATABUFFER ;

__attribute__((used)) static UINT16
RsGetBufferDataLength (
    ACPI_PARSE_OBJECT *InitializerOp)
{
    UINT16 ExtraDataSize = 0;
    ACPI_PARSE_OBJECT *DataList;




    while (InitializerOp)
    {
        if (InitializerOp->Asl.ParseOpcode == PARSEOP_DATABUFFER)
        {


            DataList = InitializerOp->Asl.Child;
            DataList = ASL_GET_PEER_NODE (DataList);



            while (DataList)
            {
                ExtraDataSize++;
                DataList = ASL_GET_PEER_NODE (DataList);
            }

            return (ExtraDataSize);
        }

        InitializerOp = ASL_GET_PEER_NODE (InitializerOp);
    }

    return (ExtraDataSize);
}
