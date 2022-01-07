
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USE (void*) ;
 scalar_t__ inheredoc ;

__attribute__((used)) static void
inheredoc_cleanup(void *dummy)
{
    USE(dummy);
    inheredoc = 0;
}
