
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int display_string (char*) ;

fputc (int c, int ign)
{
  char buf[2];
  buf[0] = c;
  buf[1] = 0;
  display_string (buf);
}
