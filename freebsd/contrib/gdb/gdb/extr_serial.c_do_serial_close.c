
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial {scalar_t__ refcnt; struct serial* next; struct serial* name; TYPE_1__* ops; int * async_handler; } ;
struct TYPE_2__ {int (* close ) (struct serial*) ;} ;


 int fputs_unfiltered (char*,int *) ;
 int * last_serial_opened ;
 struct serial* scb_base ;
 int serial_async (struct serial*,int *,int *) ;
 scalar_t__ serial_current_type ;
 int * serial_logfp ;
 int stub1 (struct serial*) ;
 int ui_file_delete (int *) ;
 int xfree (struct serial*) ;

__attribute__((used)) static void
do_serial_close (struct serial *scb, int really_close)
{
  struct serial *tmp_scb;

  last_serial_opened = ((void*)0);

  if (serial_logfp)
    {
      fputs_unfiltered ("\nEnd of log\n", serial_logfp);
      serial_current_type = 0;


      ui_file_delete (serial_logfp);
      serial_logfp = ((void*)0);
    }




  if (!scb)
    return;

  scb->refcnt--;
  if (scb->refcnt > 0)
    return;


  if (scb->async_handler != ((void*)0))
    serial_async (scb, ((void*)0), ((void*)0));

  if (really_close)
    scb->ops->close (scb);

  if (scb->name)
    xfree (scb->name);

  if (scb_base == scb)
    scb_base = scb_base->next;
  else
    for (tmp_scb = scb_base; tmp_scb; tmp_scb = tmp_scb->next)
      {
 if (tmp_scb->next != scb)
   continue;

 tmp_scb->next = tmp_scb->next->next;
 break;
      }

  xfree (scb);
}
