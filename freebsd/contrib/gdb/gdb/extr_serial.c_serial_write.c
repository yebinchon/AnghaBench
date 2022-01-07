
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write ) (struct serial*,char const*,int) ;} ;


 int gdb_flush (int *) ;
 int serial_logchar (int *,char,char const,int ) ;
 int * serial_logfp ;
 int stub1 (struct serial*,char const*,int) ;

int
serial_write (struct serial *scb, const char *str, int len)
{
  if (serial_logfp != ((void*)0))
    {
      int count;

      for (count = 0; count < len; count++)
 serial_logchar (serial_logfp, 'w', str[count] & 0xff, 0);



      gdb_flush (serial_logfp);
    }

  return (scb->ops->write (scb, str, len));
}
