
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mbdata {int dummy; } ;


 int mb_get_mem (struct mbdata*,char*,int) ;

int
mb_get_uint32(struct mbdata *mbp, u_int32_t *x)
{
 return mb_get_mem(mbp, (char *)x, 4);
}
