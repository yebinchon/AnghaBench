
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IO_KEYBOARD ;
 int IO_SERIAL ;
 scalar_t__ OPT_CHECK (int ) ;
 int RBX_NOINTR ;
 int getc (int) ;
 int ioctrl ;
 int sio_getc () ;
 scalar_t__ sio_ischar () ;

int
xgetc(int fn)
{

 if (OPT_CHECK(RBX_NOINTR))
  return (0);
 for (;;) {
  if (ioctrl & IO_KEYBOARD && getc(1))
   return (fn ? 1 : getc(0));
  if (ioctrl & IO_SERIAL && sio_ischar())
   return (fn ? 1 : sio_getc());
  if (fn)
   return (0);
 }

}
