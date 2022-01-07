
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOF ;
 int dba_char_write (char) ;
 int err (int,char*) ;
 scalar_t__ fputs (char const*,int ) ;
 int ofp ;

void
dba_str_write(const char *str)
{
 if (fputs(str, ofp) == EOF)
  err(1, "fputs");
 dba_char_write('\0');
}
