
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;



u_int32_t
__log2(u_int32_t num)
{
 u_int32_t i, limit;

 limit = 1;
 for (i = 0; limit < num; limit = limit << 1, i++);
 return (i);
}
