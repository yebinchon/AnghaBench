
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void swap_int8(uint8_t* x, uint8_t* y)
{
 uint8_t t = *x; *x = *y; *y = t;
}
