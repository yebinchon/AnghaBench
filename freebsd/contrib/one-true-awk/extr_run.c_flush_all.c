
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fp; } ;


 int fflush (scalar_t__) ;
 TYPE_1__* files ;
 int nfiles ;

void flush_all(void)
{
 int i;

 for (i = 0; i < nfiles; i++)
  if (files[i].fp)
   fflush(files[i].fp);
}
