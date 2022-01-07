
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Parent; } ;
typedef int BOOLEAN ;
typedef TYPE_1__ ACPI_NAMESPACE_NODE ;


 int FALSE ;
 int TRUE ;

BOOLEAN
UtNodeIsDescendantOf (
    ACPI_NAMESPACE_NODE *Node1,
    ACPI_NAMESPACE_NODE *Node2)
{

    if (Node1 == Node2)
    {
        return (FALSE);
    }

    if (!Node2)
    {
        return (TRUE);
    }



    while (Node1)
    {
        if (Node1 == Node2)
        {
            return (TRUE);
        }

        Node1 = Node1->Parent;
    }

    return (FALSE);
}
