
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* Next; } ;
typedef TYPE_1__ ASL_LISTING_NODE ;


 int ACPI_FREE (TYPE_1__*) ;
 int ASL_ERROR ;
 int ASL_MSG_COMPILER_INTERNAL ;
 int AslError (int ,int ,int *,char*) ;
 TYPE_1__* AslGbl_ListingNode ;

ASL_LISTING_NODE *
LsPopNode (
    void)
{
    ASL_LISTING_NODE *Lnode;




    Lnode = AslGbl_ListingNode;
    if ((!Lnode) ||
        (!Lnode->Next))
    {
        AslError (ASL_ERROR, ASL_MSG_COMPILER_INTERNAL, ((void*)0),
            "Could not pop empty listing stack");
        return (AslGbl_ListingNode);
    }

    AslGbl_ListingNode = Lnode->Next;
    ACPI_FREE (Lnode);



    return (AslGbl_ListingNode);
}
