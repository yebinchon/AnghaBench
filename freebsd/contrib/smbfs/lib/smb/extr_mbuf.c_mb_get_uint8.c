
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct mbdata {int dummy; } ;


 int mb_get_mem (struct mbdata*,int *,int) ;

int
mb_get_uint8(struct mbdata *mbp, u_int8_t *x)
{
 return mb_get_mem(mbp, x, 1);
}
