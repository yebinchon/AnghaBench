
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sr_write (char*,int) ;
 int strlen (char*) ;

void
sr_write_cr (char *s)
{
  sr_write (s, strlen (s));
  sr_write ("\r", 1);
  return;
}
