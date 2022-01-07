
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmdbuf_len ;
 scalar_t__ os_strlen (scalar_t__) ;
 scalar_t__ ps2 ;
 int putchar (char) ;

void edit_clear_line(void)
{
 int i;
 putchar('\r');
 for (i = 0; i < cmdbuf_len + 2 + (ps2 ? (int) os_strlen(ps2) : 0); i++)
  putchar(' ');
}
