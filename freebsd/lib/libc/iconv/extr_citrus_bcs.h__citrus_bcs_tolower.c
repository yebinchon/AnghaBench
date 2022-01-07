
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 scalar_t__ _citrus_bcs_isupper (char) ;

__attribute__((used)) static __inline uint8_t
_citrus_bcs_tolower(uint8_t c)
{

 return (_citrus_bcs_isupper(c) ? (c - 'A' + 'a') : c);
}
