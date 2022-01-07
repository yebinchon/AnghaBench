
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int l_uf; int l_ui; } ;
typedef TYPE_1__ l_fp ;


 int ntohl (int) ;

l_fp
convertRefIDToLFP(uint32_t r)
{
 l_fp temp;

 r = ntohl(r);



 temp.l_uf = (r << 10);

 temp.l_ui = (r >> 22) & 0x3;
 temp.l_ui |= ~(temp.l_ui & 2) + 1;

 return temp;
}
