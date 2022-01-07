
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __uint8_t ;


 scalar_t__ isc0 (int) ;
 scalar_t__ isc1 (int) ;

__attribute__((used)) static __inline bool iscntl(__uint8_t x)
{

 return (isc0(x) || isc1(x) || x == 0x7f);
}
