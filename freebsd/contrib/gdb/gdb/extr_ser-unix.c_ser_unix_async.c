
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int async_state; int fd; } ;




 int delete_file_handler (int ) ;
 int delete_timer (int) ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int gdb_stdlog ;
 int reschedule (struct serial*) ;
 scalar_t__ serial_debug_p (struct serial*) ;

void
ser_unix_async (struct serial *scb,
  int async_p)
{
  if (async_p)
    {

      scb->async_state = 128;
      if (serial_debug_p (scb))
 fprintf_unfiltered (gdb_stdlog, "[fd%d->asynchronous]\n",
       scb->fd);
      reschedule (scb);
    }
  else
    {
      if (serial_debug_p (scb))
 fprintf_unfiltered (gdb_stdlog, "[fd%d->synchronous]\n",
       scb->fd);

      switch (scb->async_state)
 {
 case 129:
   delete_file_handler (scb->fd);
   break;
 case 128:
   break;
 default:
   delete_timer (scb->async_state);
   break;
 }
    }
}
