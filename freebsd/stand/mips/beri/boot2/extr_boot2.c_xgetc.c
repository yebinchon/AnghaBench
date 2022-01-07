
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IO_KEYBOARD ;
 int IO_SERIAL ;
 scalar_t__ OPT_CHECK (int ) ;
 int RBX_NOINTR ;
 int beri_getc () ;
 int ioctrl ;
 scalar_t__ keyhit (int ) ;
 int sio_getc () ;
 scalar_t__ sio_ischar () ;

__attribute__((used)) static int
xgetc(int fn)
{
    if (OPT_CHECK(RBX_NOINTR))
 return 0;
    for (;;) {
 if (ioctrl & IO_KEYBOARD && keyhit(0))
     return fn ? 1 : beri_getc();




 if (fn)
     return 0;
    }
}
