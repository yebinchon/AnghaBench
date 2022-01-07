
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DO_KBD ;
 scalar_t__ DO_SIO ;
 scalar_t__ OPT_CHECK (int ) ;
 int RBX_NOINTR ;
 int getc (int) ;
 int sio_getc () ;
 scalar_t__ sio_ischar () ;

__attribute__((used)) static int
xgetc(int fn)
{

 if (OPT_CHECK(RBX_NOINTR))
  return (0);
 for (;;) {
  if (DO_KBD && getc(1))
   return (fn ? 1 : getc(0));
  if (DO_SIO && sio_ischar())
   return (fn ? 1 : sio_getc());
  if (fn)
   return (0);
 }
}
