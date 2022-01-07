
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;


 scalar_t__ IPPORT_HIFIRSTAUTO ;
 scalar_t__ IPPORT_HILASTAUTO ;
 scalar_t__ arc4random_uniform (scalar_t__) ;

u_int16_t
pick_proxy_port(void)
{

 return (IPPORT_HIFIRSTAUTO +
     arc4random_uniform(IPPORT_HILASTAUTO - IPPORT_HIFIRSTAUTO));
}
