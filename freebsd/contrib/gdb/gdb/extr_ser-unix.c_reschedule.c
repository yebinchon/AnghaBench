
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int async_state; int fd; int bufcnt; } ;




 int add_file_handler (int ,int ,struct serial*) ;
 int create_timer (int ,int ,struct serial*) ;
 int delete_file_handler (int ) ;
 int delete_timer (int) ;
 int fd_event ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int gdb_stdlog ;
 int push_event ;
 scalar_t__ serial_debug_p (struct serial*) ;
 scalar_t__ serial_is_async_p (struct serial*) ;

__attribute__((used)) static void
reschedule (struct serial *scb)
{
  if (serial_is_async_p (scb))
    {
      int next_state;
      switch (scb->async_state)
 {
 case 129:
   if (scb->bufcnt == 0)
     next_state = 129;
   else
     {
       delete_file_handler (scb->fd);
       next_state = create_timer (0, push_event, scb);
     }
   break;
 case 128:
   if (scb->bufcnt == 0)
     {
       add_file_handler (scb->fd, fd_event, scb);
       next_state = 129;
     }
   else
     {
       next_state = create_timer (0, push_event, scb);
     }
   break;
 default:
   if (scb->bufcnt == 0)
     {
       delete_timer (scb->async_state);
       add_file_handler (scb->fd, fd_event, scb);
       next_state = 129;
     }
   else
     next_state = scb->async_state;
   break;
 }
      if (serial_debug_p (scb))
 {
   switch (next_state)
     {
     case 129:
       if (scb->async_state != 129)
  fprintf_unfiltered (gdb_stdlog, "[fd%d->fd-scheduled]\n",
        scb->fd);
       break;
     default:
       if (scb->async_state == 129)
  fprintf_unfiltered (gdb_stdlog, "[fd%d->timer-scheduled]\n",
        scb->fd);
       break;
     }
 }
      scb->async_state = next_state;
    }
}
