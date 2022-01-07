
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xputc (int) ;

__attribute__((used)) static void
putchar(int c)
{

 if (c == '\n')
  xputc('\r');
 xputc(c);
}
