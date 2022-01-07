
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx {scalar_t__ owned; } ;



int
sx_xlocked(struct sx *sx)
{
 return (sx->owned != 0);
}
