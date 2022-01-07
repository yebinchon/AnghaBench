
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;
typedef scalar_t__ FICL_UNS ;


 scalar_t__ POPINT () ;
 scalar_t__ POPPTR () ;
 scalar_t__ POPUNS () ;
 int vmCheckStack (int *,int,int ) ;

__attribute__((used)) static void fill(FICL_VM *pVM)
{
    char ch;
    FICL_UNS u;
    char *cp;



    ch = (char)POPINT();
    u = POPUNS();
    cp = (char *)POPPTR();

    while (u > 0)
    {
        *cp++ = ch;
        u--;
    }
    return;
}
