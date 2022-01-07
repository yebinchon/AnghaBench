
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int HASH_K1 ;
 int HASH_K2 ;
 int cityhash_helper (int,int,int) ;
 int rotate (int,int) ;

uint64_t
cityhash4(uint64_t w1, uint64_t w2, uint64_t w3, uint64_t w4)
{
 uint64_t mul = HASH_K2 + 64;
 uint64_t a = w1 * HASH_K1;
 uint64_t b = w2;
 uint64_t c = w4 * mul;
 uint64_t d = w3 * HASH_K2;
 return (cityhash_helper(rotate(a + b, 43) + rotate(c, 30) + d,
     a + rotate(b + HASH_K2, 18) + c, mul));

}
