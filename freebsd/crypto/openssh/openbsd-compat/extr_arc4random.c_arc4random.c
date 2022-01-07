
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int _ARC4_LOCK () ;
 int _ARC4_UNLOCK () ;
 int _rs_random_u32 (int *) ;

u_int32_t
arc4random(void)
{
 u_int32_t val;

 _ARC4_LOCK();
 _rs_random_u32(&val);
 _ARC4_UNLOCK();
 return val;
}
