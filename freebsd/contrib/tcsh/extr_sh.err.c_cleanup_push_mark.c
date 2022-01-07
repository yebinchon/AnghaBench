
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t cleanup_mark ;
 size_t cleanup_sp ;

size_t
cleanup_push_mark(void)
{
    size_t old_mark;

    old_mark = cleanup_mark;
    cleanup_mark = cleanup_sp;
    return old_mark;
}
