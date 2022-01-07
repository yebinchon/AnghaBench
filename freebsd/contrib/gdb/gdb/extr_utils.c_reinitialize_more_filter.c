
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ chars_printed ;
 scalar_t__ lines_printed ;

void
reinitialize_more_filter (void)
{
  lines_printed = 0;
  chars_printed = 0;
}
