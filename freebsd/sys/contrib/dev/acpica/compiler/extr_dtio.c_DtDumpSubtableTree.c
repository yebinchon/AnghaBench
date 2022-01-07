
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Depth; int TotalLength; int Length; int Name; } ;
typedef TYPE_1__ DT_SUBTABLE ;


 int ASL_DEBUG_OUTPUT ;
 int DbgPrint (int ,char*,int,int ,int,char*,TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
DtDumpSubtableTree (
    DT_SUBTABLE *Subtable,
    void *Context,
    void *ReturnValue)
{

    DbgPrint (ASL_DEBUG_OUTPUT,
        "[%.04X] %24s %*s%p (%.02X) - (%.02X)\n",
        Subtable->Depth, Subtable->Name, (4 * Subtable->Depth), " ",
        Subtable, Subtable->Length, Subtable->TotalLength);
}
