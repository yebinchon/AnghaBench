
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int socklen_t ;


 int memcpy (void*,int *,int) ;

int
inet6_opt_get_val(void *databuf, int offset, void *val, socklen_t vallen)
{


 memcpy(val, (u_int8_t *)databuf + offset, vallen);

 return(offset + vallen);
}
