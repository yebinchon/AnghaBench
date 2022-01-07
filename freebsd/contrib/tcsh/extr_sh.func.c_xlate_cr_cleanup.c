
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USE (void*) ;
 scalar_t__ xlate_cr ;

__attribute__((used)) static void
xlate_cr_cleanup(void *dummy)
{
    USE(dummy);
    xlate_cr = 0;
}
