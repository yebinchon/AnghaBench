
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputc_unfiltered (int,int ) ;
 int gdb_stdout ;
 scalar_t__ isascii (int) ;

__attribute__((used)) static void
mywritec (void *arg, int c)
{
  if (isascii (c))
    fputc_unfiltered (c, gdb_stdout);
}
