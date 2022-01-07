
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_12__ {TYPE_2__* Op; } ;
struct TYPE_11__ {char* Name; } ;
struct TYPE_9__ {int CompileFlags; int ExternalName; TYPE_4__* Node; } ;
struct TYPE_10__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;
typedef TYPE_3__ ACPI_OPCODE_INFO ;
typedef TYPE_4__ ACPI_NAMESPACE_NODE ;


 int ASL_ERROR ;
 int ASL_MSG_INVALID_TYPE ;
 int ASL_MSG_NO_RETVAL ;
 int ASL_MSG_SOME_NO_RETVAL ;
 int ASL_WARNING ;
 int AnFormatBtype (char*,int) ;
 int AslError (int ,int ,TYPE_2__*,int ) ;
 int AslGbl_MsgBuffer ;
 char* AslGbl_StringBuffer ;
 char* AslGbl_StringBuffer2 ;
 int OP_METHOD_NO_RETVAL ;
 int OP_METHOD_SOME_NO_RETVAL ;
 int sprintf (int ,char*,char*,char*,char*) ;

void
AnCheckMethodReturnValue (
    ACPI_PARSE_OBJECT *Op,
    const ACPI_OPCODE_INFO *OpInfo,
    ACPI_PARSE_OBJECT *ArgOp,
    UINT32 RequiredBtypes,
    UINT32 ThisNodeBtype)
{
    ACPI_PARSE_OBJECT *OwningOp;
    ACPI_NAMESPACE_NODE *Node;


    Node = ArgOp->Asl.Node;

    if (!Node)
    {


        return;
    }



    OwningOp = Node->Op;
    if (OwningOp->Asl.CompileFlags & OP_METHOD_NO_RETVAL)
    {


        AslError (ASL_ERROR, ASL_MSG_NO_RETVAL, Op, Op->Asl.ExternalName);
    }
    else if (OwningOp->Asl.CompileFlags & OP_METHOD_SOME_NO_RETVAL)
    {


        AslError (ASL_WARNING, ASL_MSG_SOME_NO_RETVAL,
            Op, Op->Asl.ExternalName);
    }
    else if (!(ThisNodeBtype & RequiredBtypes))
    {


        AnFormatBtype (AslGbl_StringBuffer, ThisNodeBtype);
        AnFormatBtype (AslGbl_StringBuffer2, RequiredBtypes);







        if (ThisNodeBtype != 0)
        {
            sprintf (AslGbl_MsgBuffer,
                "Method returns [%s], %s operator requires [%s]",
                AslGbl_StringBuffer, OpInfo->Name, AslGbl_StringBuffer2);

            AslError (ASL_ERROR, ASL_MSG_INVALID_TYPE, ArgOp, AslGbl_MsgBuffer);
        }
    }
}
