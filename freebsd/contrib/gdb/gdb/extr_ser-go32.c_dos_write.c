
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {size_t fd; } ;
struct dos_ttystate {int txbusy; scalar_t__ base; scalar_t__ fifo; } ;


 size_t CNT_TX ;
 int EIO ;
 long RAWHZ ;
 int SERIAL_ERROR ;
 int* cnts ;
 scalar_t__ com_data ;
 int errno ;
 int outportb (scalar_t__,int ) ;
 int outportsb (scalar_t__,char const*,int) ;
 struct dos_ttystate* ports ;
 long rawclock () ;

__attribute__((used)) static int
dos_write (struct serial *scb, const char *str, int len)
{
  volatile struct dos_ttystate *port = &ports[scb->fd];
  int fifosize = port->fifo ? 16 : 1;
  long then;
  int cnt;

  while (len > 0)
    {

      cnt = fifosize > len ? len : fifosize;
      port->txbusy = 1;







      for ( ; cnt > 0; cnt--, len--)
 outportb (port->base + com_data, *str++);





      then = rawclock () + RAWHZ;
      while (port->txbusy)
 {
   if ((rawclock () - then) >= 0)
     {
       errno = EIO;
       return SERIAL_ERROR;
     }
 }
    }
  return 0;
}
