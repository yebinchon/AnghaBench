
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* s; scalar_t__ j; scalar_t__ i; } ;


 TYPE_1__ rs ;

__attribute__((used)) static inline void
arc4_init(void)
{
 int n;

 for (n = 0; n < 256; n++)
  rs.s[n] = n;
 rs.i = 0;
 rs.j = 0;
}
