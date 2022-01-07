
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputc_unfiltered (int,int ) ;
 int gdb_stdout ;
 scalar_t__ isascii (int) ;

__attribute__((used)) static int
mywrite (void *arg, char const *buffer, int len)
{
  int i;
  char *e;

  e = (char *) buffer;
  for (i = 0; i < len; i++)
    {
      if (isascii ((int) *e))
 {
   fputc_unfiltered ((int) *e, gdb_stdout);
   e++;
 }
    }

  return len;
}
