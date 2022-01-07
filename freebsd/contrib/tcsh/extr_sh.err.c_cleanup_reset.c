
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cleanup_mark ;
 scalar_t__ cleanup_sp ;

int
cleanup_reset(void)
{
    return cleanup_sp > cleanup_mark;
}
