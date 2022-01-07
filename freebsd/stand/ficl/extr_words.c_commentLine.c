
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;


 char* vmGetInBuf (int *) ;
 char* vmGetInBufEnd (int *) ;
 int vmUpdateTib (int *,char*) ;

__attribute__((used)) static void commentLine(FICL_VM *pVM)
{
    char *cp = vmGetInBuf(pVM);
    char *pEnd = vmGetInBufEnd(pVM);
    char ch = *cp;

    while ((cp != pEnd) && (ch != '\r') && (ch != '\n'))
    {
        ch = *++cp;
    }






    if (cp != pEnd)
    {
        cp++;

        if ( (cp != pEnd) && (ch != *cp)
             && ((*cp == '\r') || (*cp == '\n')) )
            cp++;
    }

    vmUpdateTib(pVM, cp);
    return;
}
