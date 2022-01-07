
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_8__ {scalar_t__ Integer; } ;
struct TYPE_9__ {scalar_t__ ParseOpcode; int CompileFlags; TYPE_1__ Value; } ;
struct TYPE_10__ {TYPE_2__ Asl; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int ASL_ERROR ;
 TYPE_3__* ASL_GET_PEER_NODE (TYPE_3__*) ;
 int ASL_MSG_DUPLICATE_ITEM ;
 int AslError (int ,int ,TYPE_3__*,int *) ;
 int OP_IS_DUPLICATE ;
 scalar_t__ PARSEOP_DEFAULT_ARG ;

void
RsCheckListForDuplicates (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *NextValueOp = Op;
    ACPI_PARSE_OBJECT *NextOp;
    UINT32 Value;


    if (!Op)
    {
        return;
    }



    while (NextValueOp)
    {
        Value = (UINT32) NextValueOp->Asl.Value.Integer;



        NextOp = ASL_GET_PEER_NODE (NextValueOp);
        while (NextOp)
        {
            if (NextOp->Asl.ParseOpcode != PARSEOP_DEFAULT_ARG)
            {


                if (Value == (UINT32) NextOp->Asl.Value.Integer)
                {


                    if (!(NextOp->Asl.CompileFlags & OP_IS_DUPLICATE))
                    {
                        NextOp->Asl.CompileFlags |= OP_IS_DUPLICATE;
                        AslError (ASL_ERROR, ASL_MSG_DUPLICATE_ITEM,
                            NextOp, ((void*)0));
                    }
                }
            }

            NextOp = ASL_GET_PEER_NODE (NextOp);
        }

        NextValueOp = ASL_GET_PEER_NODE (NextValueOp);
    }
}
