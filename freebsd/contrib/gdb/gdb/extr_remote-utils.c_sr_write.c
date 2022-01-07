
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int perror_with_name (char*) ;
 int printf_unfiltered (char*,char) ;
 scalar_t__ serial_write (int ,char*,int) ;
 scalar_t__ sr_get_debug () ;
 int sr_get_desc () ;

void
sr_write (char *a, int l)
{
  int i;

  if (serial_write (sr_get_desc (), a, l) != 0)
    perror_with_name ("sr_write: Error writing to remote");

  if (sr_get_debug () > 0)
    for (i = 0; i < l; i++)
      printf_unfiltered ("%c", a[i]);

  return;
}
