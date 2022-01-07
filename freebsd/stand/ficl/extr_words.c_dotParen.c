
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* pad; } ;
typedef TYPE_1__ FICL_VM ;


 char* vmGetInBuf (TYPE_1__*) ;
 char* vmGetInBufEnd (TYPE_1__*) ;
 int vmTextOut (TYPE_1__*,char*,int ) ;
 int vmUpdateTib (TYPE_1__*,char*) ;

__attribute__((used)) static void dotParen(FICL_VM *pVM)
{
    char *pSrc = vmGetInBuf(pVM);
    char *pEnd = vmGetInBufEnd(pVM);
    char *pDest = pVM->pad;
    char ch;




    for (ch = *pSrc; (pEnd != pSrc) && (ch != ')'); ch = *++pSrc)
        *pDest++ = ch;

    *pDest = '\0';
    if ((pEnd != pSrc) && (ch == ')'))
        pSrc++;

    vmTextOut(pVM, pVM->pad, 0);
    vmUpdateTib(pVM, pSrc);

    return;
}
