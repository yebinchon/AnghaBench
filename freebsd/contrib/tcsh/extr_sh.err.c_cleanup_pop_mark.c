
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 size_t cleanup_mark ;
 size_t cleanup_sp ;

void
cleanup_pop_mark(size_t mark)
{
    assert (mark <= cleanup_sp);
    cleanup_mark = mark;
}
