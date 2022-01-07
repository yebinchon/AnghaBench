
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t addrlen_t ;
typedef size_t addrkey_t ;


 size_t KEYWIDTH ;

__attribute__((used)) static inline int
cmpbit(const addrkey_t *key1, const addrkey_t *key2, addrlen_t n)
{
 addrkey_t c = key1[n/KEYWIDTH] ^ key2[n/KEYWIDTH];
 return (int)(c >> ((KEYWIDTH-1)-(n%KEYWIDTH))) & 1;
}
