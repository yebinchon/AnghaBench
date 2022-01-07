
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Length; int Buffer; } ;
typedef TYPE_1__ DT_SUBTABLE ;


 int ASL_FILE_AML_OUTPUT ;
 int FlWriteFile (int ,int ,int ) ;

__attribute__((used)) static void
DtWriteBinary (
    DT_SUBTABLE *Subtable,
    void *Context,
    void *ReturnValue)
{

    FlWriteFile (ASL_FILE_AML_OUTPUT, Subtable->Buffer, Subtable->Length);
}
