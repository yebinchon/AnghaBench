
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ base; int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef scalar_t__ FICL_UNS ;
typedef int DPUNS ;


 scalar_t__ POPPTR () ;
 scalar_t__ POPUNS () ;
 int PUSHPTR (char*) ;
 int PUSHUNS (scalar_t__) ;
 int m64Mac (int ,scalar_t__,scalar_t__) ;
 char tolower (scalar_t__) ;
 int u64Pop (int ) ;
 int u64Push (int ,int ) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void toNumber(FICL_VM *pVM)
{
    FICL_UNS count;
    char *cp;
    DPUNS accum;
    FICL_UNS base = pVM->base;
    FICL_UNS ch;
    FICL_UNS digit;





    count = POPUNS();
    cp = (char *)POPPTR();
    accum = u64Pop(pVM->pStack);

    for (ch = *cp; count > 0; ch = *++cp, count--)
    {
        if (ch < '0')
            break;

        digit = ch - '0';

        if (digit > 9)
            digit = tolower(ch) - 'a' + 10;




        if (digit >= base)
            break;

        accum = m64Mac(accum, base, digit);
    }

    u64Push(pVM->pStack, accum);
    PUSHPTR(cp);
    PUSHUNS(count);

    return;
}
