
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int l_ui; int l_uf; } ;
typedef TYPE_1__ l_fp ;


 int L_ADDUF (TYPE_1__*,int) ;
 int UINT32_C (int) ;
 int htonl (int) ;

uint32_t
convertLFPToRefID(l_fp num)
{
 uint32_t temp;







 L_ADDUF(&num, 0x200);
 num.l_ui &= 3;


 temp = (num.l_ui << 22) | (num.l_uf >> 10);


 temp |= UINT32_C(0xFE000000);



 return htonl(temp);
}
