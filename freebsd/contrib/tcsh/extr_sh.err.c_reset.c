
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _reset () ;
 int abort () ;
 int cleanup_until_mark () ;

void
reset(void)
{
    cleanup_until_mark();
    _reset();
    abort();
}
