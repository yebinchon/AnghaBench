
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtd ;
typedef int HUFv07_DTable ;
typedef int DTableDesc ;


 int memcpy (int *,int const*,int) ;

__attribute__((used)) static DTableDesc HUFv07_getDTableDesc(const HUFv07_DTable* table)
{
    DTableDesc dtd;
    memcpy(&dtd, table, sizeof(dtd));
    return dtd;
}
