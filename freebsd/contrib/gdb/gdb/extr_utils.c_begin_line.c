
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ chars_printed ;
 int puts_filtered (char*) ;

void
begin_line (void)
{
  if (chars_printed > 0)
    {
      puts_filtered ("\n");
    }
}
