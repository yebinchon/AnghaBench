
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union q_util {int dummy; } q_util ;
typedef union l_util {int dummy; } l_util ;
typedef scalar_t__ u_short ;
typedef scalar_t__ u_int64_t ;
typedef scalar_t__ u_int32_t ;


 int REDUCE16 ;

u_short
in_pseudo(u_int32_t a, u_int32_t b, u_int32_t c)
{
 u_int64_t sum;
 union q_util q_util;
 union l_util l_util;

 sum = (u_int64_t) a + b + c;
 REDUCE16;
 return (sum);
}
