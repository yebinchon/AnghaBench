
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_11__ {TYPE_1__* Node; int ParseOpcode; } ;
struct TYPE_16__ {TYPE_2__ Asl; } ;
struct TYPE_12__ {int AcpiBtype; } ;
struct TYPE_15__ {TYPE_3__ Asl; } ;
struct TYPE_13__ {int ParseOpcode; TYPE_6__* ParentMethod; TYPE_9__* Child; int CompileFlags; } ;
struct TYPE_14__ {TYPE_4__ Asl; } ;
struct TYPE_10__ {TYPE_6__* Op; } ;
typedef int ACPI_STATUS ;
typedef TYPE_5__ ACPI_PARSE_OBJECT ;


 int ACPI_UINT32_MAX ;
 int AE_OK ;
 int ASL_WALK_VISIT_UPWARD ;
 int AnGetBtype (TYPE_9__*) ;
 int OP_METHOD_TYPED ;
 int PARSEOP_DEFAULT_ARG ;

 int PARSEOP_METHODCALL ;

 int TrWalkParseTree (TYPE_6__*,int ,int *,int (*) (TYPE_5__*,int ,void*),int *) ;

ACPI_STATUS
AnMethodTypingWalkEnd (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    UINT32 ThisOpBtype;


    switch (Op->Asl.ParseOpcode)
    {
    case 129:

        Op->Asl.CompileFlags |= OP_METHOD_TYPED;
        break;

    case 128:

        if ((Op->Asl.Child) &&
            (Op->Asl.Child->Asl.ParseOpcode != PARSEOP_DEFAULT_ARG))
        {
            ThisOpBtype = AnGetBtype (Op->Asl.Child);

            if ((Op->Asl.Child->Asl.ParseOpcode == PARSEOP_METHODCALL) &&
                (ThisOpBtype == (ACPI_UINT32_MAX -1)))
            {
                if (Op->Asl.Child->Asl.Node &&
                    (Op->Asl.ParentMethod != Op->Asl.Child->Asl.Node->Op))
                {


                    TrWalkParseTree (Op->Asl.Child->Asl.Node->Op,
                        ASL_WALK_VISIT_UPWARD, ((void*)0),
                        AnMethodTypingWalkEnd, ((void*)0));

                    ThisOpBtype = AnGetBtype (Op->Asl.Child);
                }
            }



            if (Op->Asl.ParentMethod)
            {
                Op->Asl.ParentMethod->Asl.AcpiBtype |= ThisOpBtype;
            }
        }
        break;

    default:

        break;
    }

    return (AE_OK);
}
