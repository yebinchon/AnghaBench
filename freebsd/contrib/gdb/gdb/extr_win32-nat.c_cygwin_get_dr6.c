
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* dr ;

unsigned
cygwin_get_dr6 (void)
{
  return dr[6];
}
