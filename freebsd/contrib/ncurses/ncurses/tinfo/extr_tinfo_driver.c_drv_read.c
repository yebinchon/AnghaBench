
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ read_thread; } ;
struct TYPE_3__ {int _ifd; } ;
typedef int TERMINAL_CONTROL_BLOCK ;
typedef TYPE_1__ SCREEN ;


 int AssertTCB () ;
 int SetSP () ;
 TYPE_2__ _nc_globals ;
 int assert (int*) ;
 scalar_t__ pthread_equal ;
 scalar_t__ pthread_kill ;
 scalar_t__ pthread_self () ;
 int read (int ,unsigned char*,size_t) ;

__attribute__((used)) static int
drv_read(TERMINAL_CONTROL_BLOCK * TCB, int *buf)
{
    SCREEN *sp;
    unsigned char c2 = 0;
    int n;

    AssertTCB();
    assert(buf);
    SetSP();





    n = read(sp->_ifd, &c2, (size_t) 1);



    *buf = (int) c2;
    return n;
}
