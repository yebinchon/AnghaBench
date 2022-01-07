
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Peer; int Child; int Parent; int Flags; int SizeOfLengthField; int TotalLength; int Length; int Name; int Depth; } ;
typedef TYPE_1__ DT_SUBTABLE ;


 int ASL_DEBUG_OUTPUT ;
 int DbgPrint (int ,char*,int ,int ,int ,int ,int ,int ,TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static void
DtDumpSubtableInfo (
    DT_SUBTABLE *Subtable,
    void *Context,
    void *ReturnValue)
{

    DbgPrint (ASL_DEBUG_OUTPUT,
        "[%.04X] %24s %.08X %.08X %.08X %.08X %p %p %p %p\n",
        Subtable->Depth, Subtable->Name, Subtable->Length, Subtable->TotalLength,
        Subtable->SizeOfLengthField, Subtable->Flags, Subtable,
        Subtable->Parent, Subtable->Child, Subtable->Peer);
}
