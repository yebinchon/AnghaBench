
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t addrlen_t ;
typedef size_t addrkey_t ;


 size_t KEYWIDTH ;
 int log_assert (int) ;

__attribute__((used)) static int
getbit(const addrkey_t *addr, addrlen_t addrlen, addrlen_t n)
{
 log_assert(addrlen > n);
 (void)addrlen;
 return (int)(addr[n/KEYWIDTH]>>((KEYWIDTH-1)-(n%KEYWIDTH))) & 1;
}
