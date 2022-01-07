
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
typedef scalar_t__ u_int64_t ;


 int ADDCARRY (scalar_t__) ;

u_short
in_addword(u_short a, u_short b)
{
 u_int64_t sum = a + b;

 ADDCARRY(sum);
 return (sum);
}
