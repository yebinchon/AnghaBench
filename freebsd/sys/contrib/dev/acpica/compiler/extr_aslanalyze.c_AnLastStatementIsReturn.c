
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ ParseOpcode; int Next; } ;
struct TYPE_9__ {TYPE_1__ Asl; } ;
typedef int BOOLEAN ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 TYPE_2__* ASL_GET_CHILD_NODE (TYPE_2__*) ;
 TYPE_2__* ASL_GET_PEER_NODE (TYPE_2__*) ;
 int FALSE ;
 scalar_t__ PARSEOP_RETURN ;
 int TRUE ;

BOOLEAN
AnLastStatementIsReturn (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *Next;




    Next = ASL_GET_CHILD_NODE (Op);
    while (Next)
    {
        if ((!Next->Asl.Next) &&
            (Next->Asl.ParseOpcode == PARSEOP_RETURN))
        {
            return (TRUE);
        }

        Next = ASL_GET_PEER_NODE (Next);
    }

    return (FALSE);
}
