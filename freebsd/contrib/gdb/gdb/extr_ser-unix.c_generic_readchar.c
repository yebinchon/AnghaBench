
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int bufcnt; int* bufp; } ;
typedef enum serial_rc { ____Placeholder_serial_rc } serial_rc ;





 int reschedule (struct serial*) ;

__attribute__((used)) static int
generic_readchar (struct serial *scb, int timeout,
    int (do_readchar) (struct serial *scb, int timeout))
{
  int ch;
  if (scb->bufcnt > 0)
    {
      ch = *scb->bufp;
      scb->bufcnt--;
      scb->bufp++;
    }
  else if (scb->bufcnt < 0)
    {

      ch = scb->bufcnt;
    }
  else
    {
      ch = do_readchar (scb, timeout);
      if (ch < 0)
 {
   switch ((enum serial_rc) ch)
     {
     case 130:
     case 129:

       scb->bufcnt = ch;
       break;
     case 128:
       scb->bufcnt = 0;
       break;
     }
 }
    }
  reschedule (scb);
  return ch;
}
