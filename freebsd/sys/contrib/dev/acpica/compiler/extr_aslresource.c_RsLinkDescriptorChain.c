
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_4__ {scalar_t__ BufferLength; struct TYPE_4__* Next; } ;
typedef TYPE_1__ ASL_RESOURCE_NODE ;



UINT32
RsLinkDescriptorChain (
    ASL_RESOURCE_NODE **PreviousRnode,
    ASL_RESOURCE_NODE *Rnode)
{
    ASL_RESOURCE_NODE *LastRnode;
    UINT32 CurrentByteOffset;




    if (!Rnode)
    {
        return (0);
    }



    (*PreviousRnode)->Next = Rnode;
    CurrentByteOffset = Rnode->BufferLength;



    LastRnode = Rnode;
    while (LastRnode->Next)
    {
        LastRnode = LastRnode->Next;
        CurrentByteOffset += LastRnode->BufferLength;
    }



    *PreviousRnode = LastRnode;
    return (CurrentByteOffset);
}
