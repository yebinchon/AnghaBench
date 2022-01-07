
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void
swap_char(uint32_t * a, uint32_t * b)
{
    uint32_t t;
    t = *a;
    *a = *b;
    *b = t;
}
