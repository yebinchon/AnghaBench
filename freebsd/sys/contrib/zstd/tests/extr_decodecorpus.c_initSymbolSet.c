
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t BYTE ;


 int memset (size_t*,int ,size_t) ;

__attribute__((used)) static void initSymbolSet(const BYTE* symbols, size_t len, BYTE* set, BYTE maxSymbolValue)
{
    size_t i;

    memset(set, 0, (size_t)maxSymbolValue+1);

    for (i = 0; i < len; i++) {
        set[symbols[i]] = 1;
    }
}
