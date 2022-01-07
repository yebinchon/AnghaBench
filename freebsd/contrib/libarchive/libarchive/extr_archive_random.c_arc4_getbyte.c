
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int i; int* s; int j; } ;


 TYPE_1__ rs ;

__attribute__((used)) static inline uint8_t
arc4_getbyte(void)
{
 uint8_t si, sj;

 rs.i = (rs.i + 1);
 si = rs.s[rs.i];
 rs.j = (rs.j + si);
 sj = rs.s[rs.j];
 rs.s[rs.i] = sj;
 rs.s[rs.j] = si;
 return (rs.s[(si + sj) & 0xff]);
}
