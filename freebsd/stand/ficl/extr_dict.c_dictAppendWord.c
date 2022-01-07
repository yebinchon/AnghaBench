
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNS8 ;
typedef int STRINGINFO ;
typedef int FICL_WORD ;
typedef int FICL_DICT ;
typedef int FICL_CODE ;


 int SI_SETLEN (int ,int ) ;
 int SI_SETPTR (int ,char*) ;
 int * dictAppendWord2 (int *,int ,int ,int ) ;
 int strlen (char*) ;

FICL_WORD *dictAppendWord(FICL_DICT *pDict,
                          char *name,
                          FICL_CODE pCode,
                          UNS8 flags)
{
    STRINGINFO si;
    SI_SETLEN(si, strlen(name));
    SI_SETPTR(si, name);
    return dictAppendWord2(pDict, si, pCode, flags);
}
