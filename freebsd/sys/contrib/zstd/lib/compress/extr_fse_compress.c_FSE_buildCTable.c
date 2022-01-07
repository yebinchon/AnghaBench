
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tableSymbol ;
typedef int FSE_FUNCTION_TYPE ;
typedef int FSE_CTable ;


 int FSE_MAX_TABLESIZE ;
 size_t FSE_buildCTable_wksp (int *,short const*,unsigned int,unsigned int,int *,int) ;

size_t FSE_buildCTable(FSE_CTable* ct, const short* normalizedCounter, unsigned maxSymbolValue, unsigned tableLog)
{
    FSE_FUNCTION_TYPE tableSymbol[FSE_MAX_TABLESIZE];
    return FSE_buildCTable_wksp(ct, normalizedCounter, maxSymbolValue, tableLog, tableSymbol, sizeof(tableSymbol));
}
