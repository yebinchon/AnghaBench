
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {scalar_t__ bufcnt; int buf; int bufp; } ;


 int SERIAL_ERROR ;

int
ser_unix_flush_input (struct serial *scb)
{
  if (scb->bufcnt >= 0)
    {
      scb->bufcnt = 0;
      scb->bufp = scb->buf;
      return 0;
    }
  else
    return SERIAL_ERROR;
}
