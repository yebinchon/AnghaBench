
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_3__ {int BufferLength; void* Buffer; } ;
typedef TYPE_1__ ASL_RESOURCE_NODE ;


 void* UtLocalCalloc (int) ;

ASL_RESOURCE_NODE *
RsAllocateResourceNode (
    UINT32 Size)
{
    ASL_RESOURCE_NODE *Rnode;




    Rnode = UtLocalCalloc (sizeof (ASL_RESOURCE_NODE));



    Rnode->Buffer = UtLocalCalloc (Size);
    Rnode->BufferLength = Size;
    return (Rnode);
}
