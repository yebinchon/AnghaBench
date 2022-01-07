
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union q_util {int dummy; } q_util ;
typedef int uint64_t ;


 int REDUCE32 ;
 int do_cksum (void*,int) ;

__attribute__((used)) static
uint64_t _do_cksum(void *addr, int len)
{
 uint64_t sum;
 union q_util q_util;

 sum = do_cksum(addr, len);
 REDUCE32;
 return (sum);
}
