
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbdata {int dummy; } ;
typedef int int64_t ;


 int mb_get_mem (struct mbdata*,char*,int) ;

int
mb_get_int64(struct mbdata *mbp, int64_t *x)
{
 return mb_get_mem(mbp, (char *)x, 8);
}
