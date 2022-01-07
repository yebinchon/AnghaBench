
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STRINGINFO ;
typedef int FICL_VM ;


 int SI_PTR (int ) ;
 int SI_SETLEN (int ,char*) ;
 int SI_SETPTR (int ,char*) ;
 char* vmGetInBuf (int *) ;
 char* vmGetInBufEnd (int *) ;
 int vmUpdateTib (int *,char*) ;

STRINGINFO vmParseStringEx(FICL_VM *pVM, char delim, char fSkipLeading)
{
    STRINGINFO si;
    char *pSrc = vmGetInBuf(pVM);
    char *pEnd = vmGetInBufEnd(pVM);
    char ch;

    if (fSkipLeading)
    {
        while ((pSrc != pEnd) && (*pSrc == delim))
            pSrc++;
    }

    SI_SETPTR(si, pSrc);

    for (ch = *pSrc; (pSrc != pEnd)
                  && (ch != delim)
                  && (ch != '\r')
                  && (ch != '\n'); ch = *++pSrc)
    {
        ;
    }


    SI_SETLEN(si, pSrc - SI_PTR(si));

    if ((pSrc != pEnd) && (*pSrc == delim))
        pSrc++;

    vmUpdateTib(pVM, pSrc);
    return si;
}
