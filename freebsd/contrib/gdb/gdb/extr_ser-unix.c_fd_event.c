
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {scalar_t__ bufcnt; int async_context; int (* async_handler ) (struct serial*,int ) ;int buf; int bufp; int fd; } ;


 int BUFSIZ ;
 scalar_t__ EINTR ;
 scalar_t__ SERIAL_EOF ;
 void* SERIAL_ERROR ;
 scalar_t__ errno ;
 int read (int ,int ,int ) ;
 int reschedule (struct serial*) ;
 int stub1 (struct serial*,int ) ;

__attribute__((used)) static void
fd_event (int error, void *context)
{
  struct serial *scb = context;
  if (error != 0)
    {
      scb->bufcnt = SERIAL_ERROR;
    }
  else if (scb->bufcnt == 0)
    {



      int nr;
      do
 {
   nr = read (scb->fd, scb->buf, BUFSIZ);
 }
      while (nr == -1 && errno == EINTR);
      if (nr == 0)
 {
   scb->bufcnt = SERIAL_EOF;
 }
      else if (nr > 0)
 {
   scb->bufcnt = nr;
   scb->bufp = scb->buf;
 }
      else
 {
   scb->bufcnt = SERIAL_ERROR;
 }
    }
  scb->async_handler (scb, scb->async_context);
  reschedule (scb);
}
