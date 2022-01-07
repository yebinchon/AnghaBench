
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int async_context; int (* async_handler ) (struct serial*,int ) ;int async_state; } ;


 int NOTHING_SCHEDULED ;
 int reschedule (struct serial*) ;
 int stub1 (struct serial*,int ) ;

__attribute__((used)) static void
push_event (void *context)
{
  struct serial *scb = context;
  scb->async_state = NOTHING_SCHEDULED;
  scb->async_handler (scb, scb->async_context);

  reschedule (scb);
}
