
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int base; scalar_t__ state; } ;
typedef int STRINGINFO ;
typedef TYPE_1__ FICL_VM ;
typedef unsigned int FICL_INT ;
typedef int FICL_COUNT ;


 scalar_t__ COMPILE ;
 int FALSE ;
 int PUSHINT (unsigned int) ;
 int SI_COUNT (int ) ;
 char* SI_PTR (int ) ;
 int TRUE ;
 int isalnum (unsigned int) ;
 int literalIm (TYPE_1__*) ;
 char tolower (unsigned int) ;

int ficlParseNumber(FICL_VM *pVM, STRINGINFO si)
{
    FICL_INT accum = 0;
    char isNeg = FALSE;
 char hasDP = FALSE;
    unsigned base = pVM->base;
    char *cp = SI_PTR(si);
    FICL_COUNT count= (FICL_COUNT)SI_COUNT(si);
    unsigned ch;
    unsigned digit;

    if (count > 1)
    {
        switch (*cp)
        {
        case '-':
            cp++;
            count--;
            isNeg = TRUE;
            break;
        case '+':
            cp++;
            count--;
            isNeg = FALSE;
            break;
        default:
            break;
        }
    }

    if ((count > 0) && (cp[count-1] == '.'))
    {
        hasDP = TRUE;
        count--;
    }

    if (count == 0)
        return FALSE;

    while ((count--) && ((ch = *cp++) != '\0'))
    {
        if (!isalnum(ch))
            return FALSE;

        digit = ch - '0';

        if (digit > 9)
            digit = tolower(ch) - 'a' + 10;

        if (digit >= base)
            return FALSE;

        accum = accum * base + digit;
    }

 if (hasDP)
  PUSHINT(0);

    if (isNeg)
        accum = -accum;

    PUSHINT(accum);
    if (pVM->state == COMPILE)
        literalIm(pVM);

    return TRUE;
}
