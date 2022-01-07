
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int socklen_t ;


 int memcpy (int *,void*,int) ;

int
inet6_opt_set_val(void *databuf, int offset, void *val, socklen_t vallen)
{

 memcpy((u_int8_t *)databuf + offset, val, vallen);
 return(offset + vallen);
}
