
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STRINGINFO ;
typedef int FICL_VM ;
typedef scalar_t__ FICL_UNS ;


 int SI_SETLEN (int ,scalar_t__) ;
 int SI_SETPTR (int ,char*) ;
 scalar_t__ isspace (char) ;
 char* skipSpace (char*,char*) ;
 char* vmGetInBuf (int *) ;
 char* vmGetInBufEnd (int *) ;
 int vmUpdateTib (int *,char*) ;

STRINGINFO vmGetWord0(FICL_VM *pVM)
{
    char *pSrc = vmGetInBuf(pVM);
    char *pEnd = vmGetInBufEnd(pVM);
    STRINGINFO si;
    FICL_UNS count = 0;
    char ch = 0;

    pSrc = skipSpace(pSrc, pEnd);
    SI_SETPTR(si, pSrc);
    for (;;)
    {
        if (pEnd == pSrc)
            break;
        ch = *pSrc;
        if (isspace(ch))
            break;
        count++;
        pSrc++;
    }

    SI_SETLEN(si, count);

    if ((pEnd != pSrc) && isspace(ch))
        pSrc++;

    vmUpdateTib(pVM, pSrc);

    return si;
}
