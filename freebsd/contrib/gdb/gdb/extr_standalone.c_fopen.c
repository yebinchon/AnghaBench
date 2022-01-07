
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ open (char*,int) ;

FILE *
fopen (char *filename, char *modes)
{
  return (FILE *) open (filename, *modes == 'w');
}
