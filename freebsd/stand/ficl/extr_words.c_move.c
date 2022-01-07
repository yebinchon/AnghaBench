
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;
typedef int FICL_UNS ;


 char* POPPTR () ;
 int POPUNS () ;
 int vmCheckStack (int *,int,int ) ;

__attribute__((used)) static void move(FICL_VM *pVM)
{
    FICL_UNS u;
    char *addr2;
    char *addr1;




    u = POPUNS();
    addr2 = POPPTR();
    addr1 = POPPTR();

    if (u == 0)
        return;




    if (addr1 >= addr2)
    {
        for (; u > 0; u--)
            *addr2++ = *addr1++;
    }
    else
    {
        addr2 += u-1;
        addr1 += u-1;
        for (; u > 0; u--)
            *addr2-- = *addr1--;
    }

    return;
}
