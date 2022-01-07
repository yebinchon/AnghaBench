
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STRINGINFO ;
typedef int FICL_VM ;


 int vmParseStringEx (int *,char,int) ;

STRINGINFO vmParseString(FICL_VM *pVM, char delim)
{
    return vmParseStringEx(pVM, delim, 1);
}
