
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOF ;
 int err (int,char*) ;
 int ofp ;
 scalar_t__ putc (int,int ) ;

void
dba_char_write(int c)
{
 if (putc(c, ofp) == EOF)
  err(1, "fputc");
}
