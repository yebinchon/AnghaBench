
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;


 int IPPORT_HIFIRSTAUTO ;
 int IPPORT_HILASTAUTO ;
 int arc4random () ;

u_int16_t
pick_proxy_port(void)
{
 return (IPPORT_HIFIRSTAUTO + (arc4random() %
     (IPPORT_HILASTAUTO - IPPORT_HIFIRSTAUTO)));
}
