
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx {int owned; } ;



void
sx_xunlock(struct sx *sx)
{
 sx->owned--;
}
