
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERIAL_TIMEOUT ;
 int printf_unfiltered (char*,...) ;
 int serial_readchar (int ,int ) ;
 scalar_t__ sr_get_debug () ;
 int sr_get_desc () ;

int
sr_pollchar (void)
{
  int buf;

  buf = serial_readchar (sr_get_desc (), 0);
  if (buf == SERIAL_TIMEOUT)
    buf = 0;
  if (sr_get_debug () > 0)
    {
      if (buf)
 printf_unfiltered ("%c", buf);
      else
 printf_unfiltered ("<empty character poll>");
    }

  return buf & 0x7f;
}
