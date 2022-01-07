
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx {scalar_t__ owned; } ;



void
sx_init_flags(struct sx *sx, const char *name, int flags)
{
 sx->owned = 0;
}
