
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __fail (char*) ;

void
__stack_chk_fail(void)
{
 __fail("stack overflow detected; terminated");
}
