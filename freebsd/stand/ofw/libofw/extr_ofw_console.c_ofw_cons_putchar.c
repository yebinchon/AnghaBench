
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OF_write (int ,char*,int) ;
 int stdout ;

void
ofw_cons_putchar(int c)
{
 char cbuf;

 if (c == '\n') {
  cbuf = '\r';
  OF_write(stdout, &cbuf, 1);
 }

 cbuf = c;
 OF_write(stdout, &cbuf, 1);
}
