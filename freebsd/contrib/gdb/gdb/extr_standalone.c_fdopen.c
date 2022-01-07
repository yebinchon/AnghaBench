
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;



FILE *
fdopen (int desc)
{
  return (FILE *) desc;
}
