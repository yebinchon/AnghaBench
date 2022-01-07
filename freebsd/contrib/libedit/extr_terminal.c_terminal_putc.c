
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputc (int,int *) ;
 int * terminal_outfile ;

__attribute__((used)) static int
terminal_putc(int c)
{
 if (terminal_outfile == ((void*)0))
  return -1;
 return fputc(c, terminal_outfile);
}
