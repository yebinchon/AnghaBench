
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int lrand48 () ;

__attribute__((used)) static u_int32_t
random_uint32(void)
{
 return lrand48();
}
