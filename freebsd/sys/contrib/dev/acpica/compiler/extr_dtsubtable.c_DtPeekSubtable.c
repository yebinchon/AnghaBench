
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DT_SUBTABLE ;


 int * AslGbl_SubtableStack ;

DT_SUBTABLE *
DtPeekSubtable (
    void)
{

    return (AslGbl_SubtableStack);
}
