
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERIAL_TIMEOUT ;
 int error (char*) ;
 int printf_unfiltered (char*,int) ;
 int serial_readchar (int ,int ) ;
 scalar_t__ sr_get_debug () ;
 int sr_get_desc () ;
 int sr_get_timeout () ;

int
sr_readchar (void)
{
  int buf;

  buf = serial_readchar (sr_get_desc (), sr_get_timeout ());

  if (buf == SERIAL_TIMEOUT)
    error ("Timeout reading from remote system.");

  if (sr_get_debug () > 0)
    printf_unfiltered ("%c", buf);

  return buf & 0x7f;
}
