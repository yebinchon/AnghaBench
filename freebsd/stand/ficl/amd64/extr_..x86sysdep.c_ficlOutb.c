
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u_char ;
struct TYPE_3__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int outb (int ,scalar_t__) ;
 scalar_t__ stackPopINT (int ) ;
 int stackPopUNS (int ) ;

void
ficlOutb(FICL_VM *pVM)
{
 u_char c;
 uint32_t port;

 port=stackPopUNS(pVM->pStack);
 c=(u_char)stackPopINT(pVM->pStack);
 outb(port,c);
}
