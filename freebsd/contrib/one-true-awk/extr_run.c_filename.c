
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* fname; int * fp; } ;
typedef int FILE ;


 TYPE_1__* files ;
 int nfiles ;

const char *filename(FILE *fp)
{
 int i;

 for (i = 0; i < nfiles; i++)
  if (fp == files[i].fp)
   return files[i].fname;
 return "???";
}
