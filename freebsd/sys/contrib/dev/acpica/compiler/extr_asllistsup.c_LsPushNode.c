
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* Filename; struct TYPE_4__* Next; scalar_t__ LineNumber; } ;
typedef TYPE_1__ ASL_LISTING_NODE ;


 TYPE_1__* AslGbl_ListingNode ;
 TYPE_1__* UtLocalCalloc (int) ;

void
LsPushNode (
    char *Filename)
{
    ASL_LISTING_NODE *Lnode;




    Lnode = UtLocalCalloc (sizeof (ASL_LISTING_NODE));



    Lnode->Filename = Filename;
    Lnode->LineNumber = 0;



    Lnode->Next = AslGbl_ListingNode;
    AslGbl_ListingNode = Lnode;
}
